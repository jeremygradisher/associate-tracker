class ArchivedProjectsController < ApplicationController
  def index
    @search = Project.where(:status => "Complete").search(params[:q])
    
    #@projects = Project.all
    #@projects = Project.where(:status => "Complete")

    if params[:searchnear].present?
      #@projects = @search.result(distinct: true).near(params[:searchnear], 100).paginate(:page => params[:page], :per_page => 25)
      @projects = @search.result(distinct: true).near(params[:searchnear], 60).paginate(:page => params[:page], :per_page => 25)
    else
      #@locations = Location.all
      @projects = @search.result(distinct: true).order(:name, :id).paginate(:page => params[:page], :per_page => 25)
    end
    
    @associates = Associate.all
    
    @prospect_count = @projects.where(:status => 'Prospect').count
    @in_process_count = @projects.where(:status => 'In Process').count
    #@complete_count = @projects.where(:status => 'Complete').count
    
    @hash = Gmaps4rails.build_markers(@associates) do |associate, marker|
      marker.lat associate.latitude
      marker.lng associate.longitude
      marker.infowindow render_to_string(:partial => "/associates/pop_template", :locals => { :associate => associate})
      if associate.active == true
        marker.picture({
          "url": "https://maps.google.com/mapfiles/ms/icons/green-dot.png",
          "width":  32,
          "height": 32
        })
      else
        marker.picture({
          "url": "https://maps.google.com/mapfiles/ms/icons/red-dot.png",
          "width":  32,
          "height": 32
        })
      end
    end
    
    @phash = Gmaps4rails.build_markers(@projects) do |project, marker|
      marker.lat project.latitude
      marker.lng project.longitude
      marker.infowindow render_to_string(:partial => "/projects/pop_template", :locals => { :project => project})
      if project.status == 'Prospect'
        marker.picture({
          "url": "https://maps.google.com/mapfiles/ms/icons/blue-dot.png",
          "width":  32,
          "height": 32
        })
      elsif project.status == 'In Process'
        marker.picture({
          "url": "https://maps.google.com/mapfiles/ms/icons/orange-dot.png",
          "width":  32,
          "height": 32
        })
      else
        marker.picture({
          "url": "https://maps.google.com/mapfiles/ms/icons/pink-dot.png",
          "width":  32,
          "height": 32
        })
      end
    end
    
    @searchbefore = params[:searchnear]
    @searchbox = Geocoder.search(params[:searchnear])
    
    @searchhash = Gmaps4rails.build_markers(@searchbox) do |searchbox, marker|
      marker.lat searchbox.latitude
      marker.lng searchbox.longitude
      marker.picture({
          "url": "https://maps.google.com/mapfiles/ms/icons/yellow-dot.png",
          "width":  32,
          "height": 32
      
        })
      marker.infowindow @searchbefore
    end
    
    @projectscount = @projects.count
  end

  def show
    @project = Project.find(params[:id])
    
    @associates = @project.associates.all
    @project_picons = @project.project_picons.all
    @project_cicons = @project.project_cicons.all
    @project_pproposals = @project.project_pproposals.all
    @project_pcontracts = @project.project_pcontracts.all
    @project_prevcontracts = @project.project_prevcontracts.all
    @project_invoices = @project.project_invoices.all
    @project_pw9s = @project.project_pw9s.all
    @project_pdocuments = @project.project_pdocuments.all
    @services = @project.services.all
  end
end
