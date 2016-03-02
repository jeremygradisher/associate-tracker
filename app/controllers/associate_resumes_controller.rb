class AssociateResumesController < ApplicationController
  before_action :set_associate_resume, only: [:show, :edit, :update, :destroy]

  # GET /associate_resumes
  # GET /associate_resumes.json
  def index
    @associate_resumes = AssociateResume.all
  end

  # GET /associate_resumes/1
  # GET /associate_resumes/1.json
  def show
  end

  # GET /associate_resumes/new
  def new
    @associate_resume = AssociateResume.new
  end

  # GET /associate_resumes/1/edit
  def edit
  end

  # POST /associate_resumes
  # POST /associate_resumes.json
  def create
    @associate_resume = AssociateResume.new(associate_resume_params)

    respond_to do |format|
      if @associate_resume.save
        format.html { redirect_to @associate_resume, notice: 'Associate resume was successfully created.' }
        format.json { render :show, status: :created, location: @associate_resume }
      else
        format.html { render :new }
        format.json { render json: @associate_resume.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /associate_resumes/1
  # PATCH/PUT /associate_resumes/1.json
  def update
    respond_to do |format|
      if @associate_resume.update(associate_resume_params)
        format.html { redirect_to @associate_resume.associate, notice: 'Associate resume was successfully updated.' }
        format.json { render :show, status: :ok, location: @associate_resume }
      else
        format.html { render :edit }
        format.json { render json: @associate_resume.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /associate_resumes/1
  # DELETE /associate_resumes/1.json
  def destroy
    @associate_resume.destroy
    respond_to do |format|
      format.html { redirect_to @associate_resume.associate, notice: 'Associate resume was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_associate_resume
      @associate_resume = AssociateResume.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def associate_resume_params
      params.require(:associate_resume).permit(:associate_id, :resume)
    end
end