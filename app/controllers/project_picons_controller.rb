class ProjectPiconsController < ApplicationController
  before_action :set_project_picon, only: [:show, :edit, :update, :destroy]

  # GET /project_picons
  # GET /project_picons.json
  def index
    @project_picons = ProjectPicon.all
  end

  # GET /project_picons/1
  # GET /project_picons/1.json
  def show
  end

  # GET /project_picons/new
  def new
    @project_picon = ProjectPicon.new
  end

  # GET /project_picons/1/edit
  def edit
  end

  # POST /project_picons
  # POST /project_picons.json
  def create
    @project_picon = ProjectPicon.new(project_picon_params)

    respond_to do |format|
      if @project_picon.save
        format.html { redirect_to @project_picon, notice: 'Project picon was successfully created.' }
        format.json { render :show, status: :created, location: @project_picon }
      else
        format.html { render :new }
        format.json { render json: @project_picon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project_picons/1
  # PATCH/PUT /project_picons/1.json
  def update
    respond_to do |format|
      if @project_picon.update(project_picon_params)
        format.html { redirect_to @project_picon.project, notice: 'Project picon was successfully updated.' }
        format.json { render :show, status: :ok, location: @project_picon }
      else
        format.html { render :edit }
        format.json { render json: @project_picon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_picons/1
  # DELETE /project_picons/1.json
  def destroy
    @project_picon.destroy
    respond_to do |format|
      format.html { redirect_to @project_picon.project, notice: 'Project picon was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_picon
      @project_picon = ProjectPicon.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_picon_params
      params.require(:project_picon).permit(:project_id, :picon)
    end
end
