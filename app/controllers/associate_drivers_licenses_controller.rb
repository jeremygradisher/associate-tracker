class AssociateDriversLicensesController < ApplicationController
  before_action :set_associate_drivers_license, only: [:show, :edit, :update, :destroy]

  # GET /associate_drivers_licenses
  # GET /associate_drivers_licenses.json
  def index
    @associate_drivers_licenses = AssociateDriversLicense.all
  end

  # GET /associate_drivers_licenses/1
  # GET /associate_drivers_licenses/1.json
  def show
  end

  # GET /associate_drivers_licenses/new
  def new
    @associate_drivers_license = AssociateDriversLicense.new
  end

  # GET /associate_drivers_licenses/1/edit
  def edit
  end

  # POST /associate_drivers_licenses
  # POST /associate_drivers_licenses.json
  def create
    @associate_drivers_license = AssociateDriversLicense.new(associate_drivers_license_params)

    respond_to do |format|
      if @associate_drivers_license.save
        format.html { redirect_to @associate_drivers_license, notice: 'Associate drivers license was successfully created.' }
        format.json { render :show, status: :created, location: @associate_drivers_license }
      else
        format.html { render :new }
        format.json { render json: @associate_drivers_license.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /associate_drivers_licenses/1
  # PATCH/PUT /associate_drivers_licenses/1.json
  def update
    respond_to do |format|
      if @associate_drivers_license.update(associate_drivers_license_params)
        format.html { redirect_to @associate_drivers_license, notice: 'Associate drivers license was successfully updated.' }
        format.json { render :show, status: :ok, location: @associate_drivers_license }
      else
        format.html { render :edit }
        format.json { render json: @associate_drivers_license.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /associate_drivers_licenses/1
  # DELETE /associate_drivers_licenses/1.json
  def destroy
    @associate_drivers_license.destroy
    respond_to do |format|
      format.html { redirect_to associate_drivers_licenses_url, notice: 'Associate drivers license was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_associate_drivers_license
      @associate_drivers_license = AssociateDriversLicense.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def associate_drivers_license_params
      params.require(:associate_drivers_license).permit(:associate_id, :drivers_license)
    end
end
