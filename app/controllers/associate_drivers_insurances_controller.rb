class AssociateDriversInsurancesController < ApplicationController
  before_action :set_associate_drivers_insurance, only: [:show, :edit, :update, :destroy]

  # GET /associate_drivers_insurances
  # GET /associate_drivers_insurances.json
  def index
    @associate_drivers_insurances = AssociateDriversInsurance.all
  end

  # GET /associate_drivers_insurances/1
  # GET /associate_drivers_insurances/1.json
  def show
  end

  # GET /associate_drivers_insurances/new
  def new
    @associate_drivers_insurance = AssociateDriversInsurance.new
  end

  # GET /associate_drivers_insurances/1/edit
  def edit
  end

  # POST /associate_drivers_insurances
  # POST /associate_drivers_insurances.json
  def create
    @associate_drivers_insurance = AssociateDriversInsurance.new(associate_drivers_insurance_params)

    respond_to do |format|
      if @associate_drivers_insurance.save
        format.html { redirect_to @associate_drivers_insurance, notice: 'Associate drivers insurance was successfully created.' }
        format.json { render :show, status: :created, location: @associate_drivers_insurance }
      else
        format.html { render :new }
        format.json { render json: @associate_drivers_insurance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /associate_drivers_insurances/1
  # PATCH/PUT /associate_drivers_insurances/1.json
  def update
    respond_to do |format|
      if @associate_drivers_insurance.update(associate_drivers_insurance_params)
        format.html { redirect_to @associate_drivers_insurance.associate, notice: 'Associate drivers insurance was successfully updated.' }
        format.json { render :show, status: :ok, location: @associate_drivers_insurance }
      else
        format.html { render :edit }
        format.json { render json: @associate_drivers_insurance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /associate_drivers_insurances/1
  # DELETE /associate_drivers_insurances/1.json
  def destroy
    @associate_drivers_insurance.destroy
    respond_to do |format|
      format.html { redirect_to @associate_drivers_insurance.associate, notice: 'Associate drivers insurance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_associate_drivers_insurance
      @associate_drivers_insurance = AssociateDriversInsurance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def associate_drivers_insurance_params
      params.require(:associate_drivers_insurance).permit(:associate_id, :drivers_insurance)
    end
end
