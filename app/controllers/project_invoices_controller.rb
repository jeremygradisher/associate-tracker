class ProjectInvoicesController < ApplicationController
  before_action :set_project_invoice, only: [:show, :edit, :update, :destroy]

  # GET /project_invoices
  # GET /project_invoices.json
  def index
    @project_invoices = ProjectInvoice.all
  end

  # GET /project_invoices/1
  # GET /project_invoices/1.json
  def show
  end

  # GET /project_invoices/new
  def new
    @project_invoice = ProjectInvoice.new
  end

  # GET /project_invoices/1/edit
  def edit
  end

  # POST /project_invoices
  # POST /project_invoices.json
  def create
    @project_invoice = ProjectInvoice.new(project_invoice_params)

    respond_to do |format|
      if @project_invoice.save
        format.html { redirect_to @project_invoice, notice: 'Project invoice was successfully created.' }
        format.json { render :show, status: :created, location: @project_invoice }
      else
        format.html { render :new }
        format.json { render json: @project_invoice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project_invoices/1
  # PATCH/PUT /project_invoices/1.json
  def update
    respond_to do |format|
      if @project_invoice.update(project_invoice_params)
        format.html { redirect_to @project_invoice.project, notice: 'Project invoice was successfully updated.' }
        format.json { render :show, status: :ok, location: @project_invoice }
      else
        format.html { render :edit }
        format.json { render json: @project_invoice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_invoices/1
  # DELETE /project_invoices/1.json
  def destroy
    @project_invoice.destroy
    respond_to do |format|
      format.html { redirect_to @project_invoice.project, notice: 'Project invoice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_invoice
      @project_invoice = ProjectInvoice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_invoice_params
      params.require(:project_invoice).permit(:project_id, :invoice)
    end
end
