class AssociatesController < ApplicationController
  before_action :set_associate, only: [:show, :edit, :update, :destroy]

  # GET /associates
  # GET /associates.json
  def index

    @search = Associate.search(params[:q])
    @searchlocs = Wrkloc.search(params[:q])
    @searchpos = Position.search(params[:q])
    #@associates = @search.result(distinct: true).order(:name, :id).paginate(:page => params[:page], :per_page => 25)

    if params[:searchnear].present?
      #@associates = Associate.near(params[:searchnear], 50).paginate(:page => params[:page], :per_page => 25)
      @associates = @search.result(distinct: true).near(params[:searchnear], 250).paginate(:page => params[:page], :per_page => 25)
    else
      #@locations = Location.all
      @associates = @search.result(distinct: true).order(:name, :id).paginate(:page => params[:page], :per_page => 25)
    end

    @associatescount = @associates.count
    @associatescount2 = @associates.joins(:positions).group(Position.arel_table[:pos_name]).count
    
    
    
    @pm_count = @associates.joins(:positions).where(:positions => { pos_name: 'PM'}).count
    @tc_count = @associates.joins(:positions).where(:positions => { pos_name: 'TC'}).count
    @dm_count = @associates.joins(:positions).where(:positions => { pos_name: 'DM'}).count
    #Post.where(:article_id => self.id).count
    #Trader.includes(:locations, :services).where(:locations => { name: 'Location name'}).order('COUNT(services.id) DESC')
    
    @hash = Gmaps4rails.build_markers(@associates) do |associate, marker|
      marker.lat associate.latitude
      marker.lng associate.longitude
      marker.infowindow render_to_string(:partial => "/associates/pop_template", :locals => { :associate => associate})
    end

  end

  # GET /associates/1
  # GET /associates/1.json
  def show
    @associate_attachments = @associate.associate_attachments.all
    @associate_resumes = @associate.associate_resumes.all
    @associate_gresumes = @associate.associate_gresumes.all
    @associate_contracts = @associate.associate_contracts.all
    @associate_w9s = @associate.associate_w9s.all
    @associate_direct_deposits = @associate.associate_direct_deposits.all
    @associate_drivers_licenses = @associate.associate_drivers_licenses.all
    @associate_drivers_insurances = @associate.associate_drivers_insurances.all
    @wrklocs = @associate.wrklocs.all
    @positions = @associate.positions.all
    @projects = @associate.projects.all
  end

  # GET /associates/new
  def new
    @associate = Associate.new
    @associate_attachment = @associate.associate_attachments.build
    @associate_resume = @associate.associate_resumes.build
    @associate_gresume = @associate.associate_gresumes.build
    @associate_contract = @associate.associate_contracts.build
    @associate_w9 = @associate.associate_w9s.build
    @associate_direct_deposit = @associate.associate_direct_deposits.build
    @associate_drivers_license = @associate.associate_drivers_licenses.build
    @associate_drivers_insurance = @associate.associate_drivers_insurances.build
  end

  # GET /associates/1/edit
  def edit
    @associate_attachment = @associate.associate_attachments.build
    @associate_resume = @associate.associate_resumes.build
    @associate_gresume = @associate.associate_gresumes.build
    @associate_contract = @associate.associate_contracts.build
    @associate_w9 = @associate.associate_w9s.build
    @associate_direct_deposit = @associate.associate_direct_deposits.build
    @associate_drivers_license = @associate.associate_drivers_licenses.build
    @associate_drivers_insurance = @associate.associate_drivers_insurances.build
  end

  # POST /associates
  # POST /associates.json
  def create
     @associate = Associate.new(associate_params)

     respond_to do |format|
       if @associate.save
         if params.has_key?(:associate_attachments)
           params[:associate_attachments]['avatar'].each do |a|
              @associate_attachment = @associate.associate_attachments.create!(:avatar => a)
           end
         end
         if params.has_key?(:associate_resumes)
           params[:associate_resumes]['resume'].each do |a|
              @associate_resume = @associate.associate_resumes.create!(:resume => a)
           end
         end
         if params.has_key?(:associate_gresumes)
           params[:associate_gresumes]['gresume'].each do |a|
              @associate_gresume = @associate.associate_gresumes.create!(:gresume => a)
           end
         end
         if params.has_key?(:associate_contracts)
           params[:associate_contracts]['contract'].each do |a|
              @associate_contract = @associate.associate_contracts.create!(:contract => a)
           end
         end
         if params.has_key?(:associate_contracts)
           params[:associate_w9s]['w9'].each do |a|
              @associate_w9 = @associate.associate_w9s.create!(:w9 => a)
           end
         end
         if params.has_key?(:associate_direct_deposits)
           params[:associate_direct_deposits]['direct_deposit'].each do |a|
              @associate_direct_deposit = @associate.associate_direct_deposits.create!(:direct_deposit => a)
           end
         end
         if params.has_key?(:associate_drivers_licenses)
           params[:associate_drivers_licenses]['drivers_license'].each do |a|
              @associate_drivers_license = @associate.associate_drivers_licenses.create!(:drivers_license => a)
           end
         end
         if params.has_key?(:associate_drivers_insurances)
           params[:associate_drivers_insurances]['drivers_insurance'].each do |a|
              @associate_drivers_insurance = @associate.associate_drivers_insurances.create!(:drivers_insurance => a)
           end
         end
         format.html { redirect_to @associate, notice: 'Associate was successfully created.' }
       else
         format.html { render action: 'new' }
       end
     end
  end

  # PATCH/PUT /associates/1
  # PATCH/PUT /associates/1.json
  def update
    respond_to do |format|
      if @associate.update(associate_params)
        if params.has_key?(:associate_attachments)
           params[:associate_attachments]['avatar'].each do |a|
              @associate_attachment = @associate.associate_attachments.create!(:avatar => a)
           end
        end
        if params.has_key?(:associate_resumes)
           params[:associate_resumes]['resume'].each do |a|
              @associate_resume = @associate.associate_resumes.create!(:resume => a)
           end
        end
        if params.has_key?(:associate_gresumes)
           params[:associate_gresumes]['gresume'].each do |a|
              @associate_gresume = @associate.associate_gresumes.create!(:gresume => a)
           end
        end
        if params.has_key?(:associate_contracts)
           params[:associate_contracts]['contract'].each do |a|
              @associate_contract = @associate.associate_contracts.create!(:contract => a)
           end
        end
        if params.has_key?(:associate_w9s)
           params[:associate_w9s]['w9'].each do |a|
              @associate_w9 = @associate.associate_w9s.create!(:w9 => a)
           end
        end
        if params.has_key?(:associate_direct_deposits)
           params[:associate_direct_deposits]['direct_deposit'].each do |a|
              @associate_direct_deposit = @associate.associate_direct_deposits.create!(:direct_deposit => a)
           end
        end
        if params.has_key?(:associate_drivers_licenses)
           params[:associate_drivers_licenses]['drivers_license'].each do |a|
              @associate_drivers_license = @associate.associate_drivers_licenses.create!(:drivers_license => a)
           end
        end
        if params.has_key?(:associate_drivers_insurances)
           params[:associate_drivers_insurances]['drivers_insurance'].each do |a|
              @associate_drivers_insurance = @associate.associate_drivers_insurances.create!(:drivers_insurance => a)
           end
        end
        format.html { redirect_to @associate, notice: 'Associate was successfully updated.' }
        format.json { render :show, status: :ok, location: @associate }
      else
        format.html { render :edit }
        format.json { render json: @associate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /associates/1
  # DELETE /associates/1.json
  def destroy
    @associate.destroy
    respond_to do |format|
      format.html { redirect_to associates_url, notice: 'Associate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_associate
      @associate = Associate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def associate_params
      params.require(:associate).permit(:name, :certifications, :phone_primary, :phone_cell, :email, :email_personal, :primary_street, :primary_state, :primary_city, :primary_zip, :business_street, :business_city, :business_state, :business_zip, :project_history, :notes, :active, :ein_ss, :birthday, :family, :wrkstate, { wrkloc_ids:[] }, { project_ids:[] }, :pos_name, { position_ids:[] }, associate_attachments_attributes: [:id, :associate_id, :avatar], associate_resumes_attributes: [:id, :associate_id, :resume], associate_gresumes_attributes: [:id, :associate_id, :gresume], associate_contracts_attributes: [:id, :associate_id, :contract], associate_w9s_attributes: [:id, :associate_id, :w9], associate_direct_deposits_attributes: [:id, :associate_id, :direct_deposit], associate_drivers_licenses_attributes: [:id, :associate_id, :drivers_license], associate_drivers_insurances_attributes: [:id, :associate_id, :drivers_insurance])
    end
end