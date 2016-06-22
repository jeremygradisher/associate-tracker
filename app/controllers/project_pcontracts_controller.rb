class ProjectPcontractsController < ApplicationController
  before_action :set_project_pcontract, only: [:show, :edit, :update, :destroy]

  # GET /project_pcontracts
  # GET /project_pcontracts.json
  def index
    @project_pcontracts = ProjectPcontract.all
  end

  # GET /project_pcontracts/1
  # GET /project_pcontracts/1.json
  def show
  end

  # GET /project_pcontracts/new
  def new
    @project_pcontract = ProjectPcontract.new
  end

  # GET /project_pcontracts/1/edit
  def edit
  end

  # POST /project_pcontracts
  # POST /project_pcontracts.json
  def create
    @project_pcontract = ProjectPcontract.new(project_pcontract_params)

    respond_to do |format|
      if @project_pcontract.save
        format.html { redirect_to @project_pcontract, notice: 'Project pcontract was successfully created.' }
        format.json { render :show, status: :created, location: @project_pcontract }
      else
        format.html { render :new }
        format.json { render json: @project_pcontract.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project_pcontracts/1
  # PATCH/PUT /project_pcontracts/1.json
  def update
    respond_to do |format|
      if @project_pcontract.update(project_pcontract_params)
        format.html { redirect_to @project_pcontract.project, notice: 'Project pcontract was successfully updated.' }
        format.json { render :show, status: :ok, location: @project_pcontract }
      else
        format.html { render :edit }
        format.json { render json: @project_pcontract.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_pcontracts/1
  # DELETE /project_pcontracts/1.json
  def destroy
    @project_pcontract.destroy
    respond_to do |format|
      format.html { redirect_to @project_pcontract.project, notice: 'Project pcontract was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_pcontract
      @project_pcontract = ProjectPcontract.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_pcontract_params
      params.require(:project_pcontract).permit(:project_id, :pcontract)
    end
end
