class ProjectPrevcontractsController < ApplicationController
  before_action :set_project_prevcontract, only: [:show, :edit, :update, :destroy]

  # GET /project_prevcontracts
  # GET /project_prevcontracts.json
  def index
    @project_prevcontracts = ProjectPrevcontract.all
  end

  # GET /project_prevcontracts/1
  # GET /project_prevcontracts/1.json
  def show
  end

  # GET /project_prevcontracts/new
  def new
    @project_prevcontract = ProjectPrevcontract.new
  end

  # GET /project_prevcontracts/1/edit
  def edit
  end

  # POST /project_prevcontracts
  # POST /project_prevcontracts.json
  def create
    @project_prevcontract = ProjectPrevcontract.new(project_prevcontract_params)

    respond_to do |format|
      if @project_prevcontract.save
        format.html { redirect_to @project_prevcontract, notice: 'Project prevcontract was successfully created.' }
        format.json { render :show, status: :created, location: @project_prevcontract }
      else
        format.html { render :new }
        format.json { render json: @project_prevcontract.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project_prevcontracts/1
  # PATCH/PUT /project_prevcontracts/1.json
  def update
    respond_to do |format|
      if @project_prevcontract.update(project_prevcontract_params)
        format.html { redirect_to @project_prevcontract.project, notice: 'Project prevcontract was successfully updated.' }
        format.json { render :show, status: :ok, location: @project_prevcontract }
      else
        format.html { render :edit }
        format.json { render json: @project_prevcontract.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_prevcontracts/1
  # DELETE /project_prevcontracts/1.json
  def destroy
    @project_prevcontract.destroy
    respond_to do |format|
      format.html { redirect_to @project_prevcontract.project, notice: 'Project prevcontract was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_prevcontract
      @project_prevcontract = ProjectPrevcontract.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_prevcontract_params
      params.require(:project_prevcontract).permit(:project_id, :prevcontract)
    end
end
