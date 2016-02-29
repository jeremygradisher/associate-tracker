class AssociateDirectDepositsController < ApplicationController
  before_action :set_associate_direct_deposit, only: [:show, :edit, :update, :destroy]

  # GET /associate_direct_deposits
  # GET /associate_direct_deposits.json
  def index
    @associate_direct_deposits = AssociateDirectDeposit.all
  end

  # GET /associate_direct_deposits/1
  # GET /associate_direct_deposits/1.json
  def show
  end

  # GET /associate_direct_deposits/new
  def new
    @associate_direct_deposit = AssociateDirectDeposit.new
  end

  # GET /associate_direct_deposits/1/edit
  def edit
  end

  # POST /associate_direct_deposits
  # POST /associate_direct_deposits.json
  def create
    @associate_direct_deposit = AssociateDirectDeposit.new(associate_direct_deposit_params)

    respond_to do |format|
      if @associate_direct_deposit.save
        format.html { redirect_to @associate_direct_deposit, notice: 'Associate direct deposit was successfully created.' }
        format.json { render :show, status: :created, location: @associate_direct_deposit }
      else
        format.html { render :new }
        format.json { render json: @associate_direct_deposit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /associate_direct_deposits/1
  # PATCH/PUT /associate_direct_deposits/1.json
  def update
    respond_to do |format|
      if @associate_direct_deposit.update(associate_direct_deposit_params)
        format.html { redirect_to @associate_direct_deposit, notice: 'Associate direct deposit was successfully updated.' }
        format.json { render :show, status: :ok, location: @associate_direct_deposit }
      else
        format.html { render :edit }
        format.json { render json: @associate_direct_deposit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /associate_direct_deposits/1
  # DELETE /associate_direct_deposits/1.json
  def destroy
    @associate_direct_deposit.destroy
    respond_to do |format|
      format.html { redirect_to associate_direct_deposits_url, notice: 'Associate direct deposit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_associate_direct_deposit
      @associate_direct_deposit = AssociateDirectDeposit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def associate_direct_deposit_params
      params.require(:associate_direct_deposit).permit(:associate_id, :direct_deposit)
    end
end
