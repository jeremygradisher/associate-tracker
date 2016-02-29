class AssociateContractsController < ApplicationController
  before_action :set_associate_contract, only: [:show, :edit, :update, :destroy]

  # GET /associate_contracts
  # GET /associate_contracts.json
  def index
    @associate_contracts = AssociateContract.all
  end

  # GET /associate_contracts/1
  # GET /associate_contracts/1.json
  def show
  end

  # GET /associate_contracts/new
  def new
    @associate_contract = AssociateContract.new
  end

  # GET /associate_contracts/1/edit
  def edit
  end

  # POST /associate_contracts
  # POST /associate_contracts.json
  def create
    @associate_contract = AssociateContract.new(associate_contract_params)

    respond_to do |format|
      if @associate_contract.save
        format.html { redirect_to @associate_contract, notice: 'Associate contract was successfully created.' }
        format.json { render :show, status: :created, location: @associate_contract }
      else
        format.html { render :new }
        format.json { render json: @associate_contract.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /associate_contracts/1
  # PATCH/PUT /associate_contracts/1.json
  def update
    respond_to do |format|
      if @associate_contract.update(associate_contract_params)
        format.html { redirect_to @associate_contract, notice: 'Associate contract was successfully updated.' }
        format.json { render :show, status: :ok, location: @associate_contract }
      else
        format.html { render :edit }
        format.json { render json: @associate_contract.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /associate_contracts/1
  # DELETE /associate_contracts/1.json
  def destroy
    @associate_contract.destroy
    respond_to do |format|
      format.html { redirect_to associate_contracts_url, notice: 'Associate contract was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_associate_contract
      @associate_contract = AssociateContract.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def associate_contract_params
      params.require(:associate_contract).permit(:associate_id, :contract)
    end
end
