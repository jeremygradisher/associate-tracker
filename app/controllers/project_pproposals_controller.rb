class ProjectPproposalsController < ApplicationController
  before_action :set_project_pproposal, only: [:show, :edit, :update, :destroy]

  # GET /project_pproposals
  # GET /project_pproposals.json
  def index
    @project_pproposals = ProjectPproposal.all
  end

  # GET /project_pproposals/1
  # GET /project_pproposals/1.json
  def show
  end

  # GET /project_pproposals/new
  def new
    @project_pproposal = ProjectPproposal.new
  end

  # GET /project_pproposals/1/edit
  def edit
  end

  # POST /project_pproposals
  # POST /project_pproposals.json
  def create
    @project_pproposal = ProjectPproposal.new(project_pproposal_params)

    respond_to do |format|
      if @project_pproposal.save
        format.html { redirect_to @project_pproposal, notice: 'Project pproposal was successfully created.' }
        format.json { render :show, status: :created, location: @project_pproposal }
      else
        format.html { render :new }
        format.json { render json: @project_pproposal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project_pproposals/1
  # PATCH/PUT /project_pproposals/1.json
  def update
    respond_to do |format|
      if @project_pproposal.update(project_pproposal_params)
        format.html { redirect_to @project_pproposal.project, notice: 'Project pproposal was successfully updated.' }
        format.json { render :show, status: :ok, location: @project_pproposal }
      else
        format.html { render :edit }
        format.json { render json: @project_pproposal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_pproposals/1
  # DELETE /project_pproposals/1.json
  def destroy
    @project_pproposal.destroy
    respond_to do |format|
      format.html { redirect_to @project_pproposal.project, notice: 'Project pproposal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_pproposal
      @project_pproposal = ProjectPproposal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_pproposal_params
      params.require(:project_pproposal).permit(:project_id, :pproposal)
    end
end
