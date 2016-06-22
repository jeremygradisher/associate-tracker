class ProjectPdocumentsController < ApplicationController
  before_action :set_project_pdocument, only: [:show, :edit, :update, :destroy]

  # GET /project_pdocuments
  # GET /project_pdocuments.json
  def index
    @project_pdocuments = ProjectPdocument.all
  end

  # GET /project_pdocuments/1
  # GET /project_pdocuments/1.json
  def show
  end

  # GET /project_pdocuments/new
  def new
    @project_pdocument = ProjectPdocument.new
  end

  # GET /project_pdocuments/1/edit
  def edit
  end

  # POST /project_pdocuments
  # POST /project_pdocuments.json
  def create
    @project_pdocument = ProjectPdocument.new(project_pdocument_params)

    respond_to do |format|
      if @project_pdocument.save
        format.html { redirect_to @project_pdocument, notice: 'Project pdocument was successfully created.' }
        format.json { render :show, status: :created, location: @project_pdocument }
      else
        format.html { render :new }
        format.json { render json: @project_pdocument.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project_pdocuments/1
  # PATCH/PUT /project_pdocuments/1.json
  def update
    respond_to do |format|
      if @project_pdocument.update(project_pdocument_params)
        format.html { redirect_to @project_pdocument.project, notice: 'Project pdocument was successfully updated.' }
        format.json { render :show, status: :ok, location: @project_pdocument }
      else
        format.html { render :edit }
        format.json { render json: @project_pdocument.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_pdocuments/1
  # DELETE /project_pdocuments/1.json
  def destroy
    @project_pdocument.destroy
    respond_to do |format|
      format.html { redirect_to @project_pdocument.project, notice: 'Project pdocument was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_pdocument
      @project_pdocument = ProjectPdocument.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_pdocument_params
      params.require(:project_pdocument).permit(:project_id, :pdocument)
    end
end
