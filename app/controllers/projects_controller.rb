class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  # GET /projects
  # GET /projects.json
  def index
    
    @search = Project.search(params[:q])
    
    #@projects = Project.all
    

    
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
    @complete_count = @projects.where(:status => 'Complete').count
    
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

  # GET /projects/1
  # GET /projects/1.json
  def show
    @associates = @project.associates.all
    @project_picons = @project.project_picons.all
    @project_cicons = @project.project_cicons.all
    @services = @project.services.all
  end

  # GET /projects/new
  def new
    @project = Project.new
    @project_picon = @project.project_picons.build
    @project_cicon = @project.project_cicons.build
  end

  # GET /projects/1/edit
  def edit
    @project_picon = @project.project_picons.build
    @project_cicon = @project.project_cicons.build
  end

  # POST /projects
  # POST /projects.json
  def create
    @project = Project.new(project_params)

    respond_to do |format|
      if @project.save
         if params.has_key?(:project_picons)
           params[:project_picons]['picon'].each do |a|
              @project_picon = @project.project_picons.create!(:picon => a)
           end
         end
         if params.has_key?(:project_cicons)
           params[:project_cicons]['cicon'].each do |a|
              @project_cicon = @project.project_cicons.create!(:cicon => a)
           end
         end
         format.html { redirect_to @project, notice: 'Project was successfully created.' }
      else
         format.html { render action: 'new' }
      end
    end
  end

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update
    respond_to do |format|
      if @project.update(project_params)
        if params.has_key?(:project_picons)
           params[:project_picons]['picon'].each do |a|
              @project_picon = @project.project_picons.create!(:picon => a)
           end
        end
        if params.has_key?(:project_cicons)
           params[:project_cicons]['cicon'].each do |a|
              @project_cicon = @project.project_cicons.create!(:cicon => a)
           end
        end
        format.html { redirect_to @project, notice: 'Project was successfully updated.' }
        format.json { render :show, status: :ok, location: @project }
      else
        format.html { render :edit }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to projects_url, notice: 'Project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      params.require(:project).permit(:name, :client_name, :link, :project_street, :project_city, :project_state, :project_zip, :status, :project_start, :project_finish, :brief_description, :services, :staffing_notes, :deal_terms, :rate, :additional_terms, :latitude, :longitude, { associate_ids:[] }, { service_ids:[] }, project_picons_attributes: [:id, :project_id, :picon])
    end
end
