class ProjectCiconsController < ApplicationController
  before_action :set_project_cicon, only: [:show, :edit, :update, :destroy]

  # GET /project_cicons
  # GET /project_cicons.json
  def index
    @project_cicons = ProjectCicon.all
  end

  # GET /project_cicons/1
  # GET /project_cicons/1.json
  def show
  end

  # GET /project_cicons/new
  def new
    @project_cicon = ProjectCicon.new
  end

  # GET /project_cicons/1/edit
  def edit
  end

  # POST /project_cicons
  # POST /project_cicons.json
  def create
    @project_cicon = ProjectCicon.new(project_cicon_params)

    respond_to do |format|
      if @project_cicon.save
        format.html { redirect_to @project_cicon, notice: 'Project cicon was successfully created.' }
        format.json { render :show, status: :created, location: @project_cicon }
      else
        format.html { render :new }
        format.json { render json: @project_cicon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project_cicons/1
  # PATCH/PUT /project_cicons/1.json
  def update
    respond_to do |format|
      if @project_cicon.update(project_cicon_params)
        format.html { redirect_to @project_cicon.project, notice: 'Project cicon was successfully updated.' }
        format.json { render :show, status: :ok, location: @project_cicon }
      else
        format.html { render :edit }
        format.json { render json: @project_cicon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_cicons/1
  # DELETE /project_cicons/1.json
  def destroy
    @project_cicon.destroy
    respond_to do |format|
      format.html { redirect_to @project_cicon.project, notice: 'Project cicon was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_cicon
      @project_cicon = ProjectCicon.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_cicon_params
      params.require(:project_cicon).permit(:project_id, :cicon)
    end
end
