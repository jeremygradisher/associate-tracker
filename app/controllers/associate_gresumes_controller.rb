class AssociateGresumesController < ApplicationController
  before_action :set_associate_gresume, only: [:show, :edit, :update, :destroy]

  # GET /associate_gresumes
  # GET /associate_gresumes.json
  def index
    @associate_gresumes = AssociateGresume.all
  end

  # GET /associate_gresumes/1
  # GET /associate_gresumes/1.json
  def show
  end

  # GET /associate_gresumes/new
  def new
    @associate_gresume = AssociateGresume.new
  end

  # GET /associate_gresumes/1/edit
  def edit
  end

  # POST /associate_gresumes
  # POST /associate_gresumes.json
  def create
    @associate_gresume = AssociateGresume.new(associate_gresume_params)

    respond_to do |format|
      if @associate_gresume.save
        format.html { redirect_to @associate_gresume, notice: 'Associate gresume was successfully created.' }
        format.json { render :show, status: :created, location: @associate_gresume }
      else
        format.html { render :new }
        format.json { render json: @associate_gresume.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /associate_gresumes/1
  # PATCH/PUT /associate_gresumes/1.json
  def update
    respond_to do |format|
      if @associate_gresume.update(associate_gresume_params)
        format.html { redirect_to @associate_gresume.associate, notice: 'Associate gresume was successfully updated.' }
        format.json { render :show, status: :ok, location: @associate_gresume }
      else
        format.html { render :edit }
        format.json { render json: @associate_gresume.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /associate_gresumes/1
  # DELETE /associate_gresumes/1.json
  def destroy
    @associate_gresume.destroy
    respond_to do |format|
      format.html { redirect_to @associate_gresume.associate, notice: 'Associate gresume was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_associate_gresume
      @associate_gresume = AssociateGresume.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def associate_gresume_params
      params.require(:associate_gresume).permit(:associate_id, :gresume)
    end
end
