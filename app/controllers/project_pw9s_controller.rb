class ProjectPw9sController < ApplicationController
  before_action :set_project_pw9, only: [:show, :edit, :update, :destroy]

  # GET /project_pw9s
  # GET /project_pw9s.json
  def index
    @project_pw9s = ProjectPw9.all
  end

  # GET /project_pw9s/1
  # GET /project_pw9s/1.json
  def show
  end

  # GET /project_pw9s/new
  def new
    @project_pw9 = ProjectPw9.new
  end

  # GET /project_pw9s/1/edit
  def edit
  end

  # POST /project_pw9s
  # POST /project_pw9s.json
  def create
    @project_pw9 = ProjectPw9.new(project_pw9_params)

    respond_to do |format|
      if @project_pw9.save
        format.html { redirect_to @project_pw9, notice: 'Project pw9 was successfully created.' }
        format.json { render :show, status: :created, location: @project_pw9 }
      else
        format.html { render :new }
        format.json { render json: @project_pw9.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project_pw9s/1
  # PATCH/PUT /project_pw9s/1.json
  def update
    respond_to do |format|
      if @project_pw9.update(project_pw9_params)
        format.html { redirect_to @project_pw9.project, notice: 'Project pw9 was successfully updated.' }
        format.json { render :show, status: :ok, location: @project_pw9 }
      else
        format.html { render :edit }
        format.json { render json: @project_pw9.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_pw9s/1
  # DELETE /project_pw9s/1.json
  def destroy
    @project_pw9.destroy
    respond_to do |format|
      format.html { redirect_to @project_pw9.project, notice: 'Project pw9 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_pw9
      @project_pw9 = ProjectPw9.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_pw9_params
      params.require(:project_pw9).permit(:project_id, :pw9)
    end
end
