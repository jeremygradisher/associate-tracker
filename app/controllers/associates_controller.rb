class AssociatesController < ApplicationController
  before_action :set_associate, only: [:show, :edit, :update, :destroy]

  # GET /associates
  # GET /associates.json
  def index
    @associates = Associate.all
  end

  # GET /associates/1
  # GET /associates/1.json
  def show
    @associate_attachments = @associate.associate_attachments.all
    @associate_resumes = @associate.associate_resumes.all
  end

  # GET /associates/new
  def new
    @associate = Associate.new
    @associate_attachment = @associate.associate_attachments.build
    @associate_resume = @associate.associate_resumes.build
  end

  # GET /associates/1/edit
  def edit
    @associate_attachment = @associate.associate_attachments.build
    @associate_resume = @associate.associate_resumes.build
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
      params.require(:associate).permit(:name, :phone_primary, :phone_cell, :email, :email_personal, :address_home, :address_business, :project_history, :position, :working_locations, :notes, :active, :ein_ss, :birthday, :family, associate_attachments_attributes: [:id, :associate_id, :avatar], associate_resumes_attributes: [:id, :associate_id, :resume])
    end
end