class AssociateAttachmentsController < ApplicationController
  before_action :set_associate_attachment, only: [:show, :edit, :update, :destroy]

  # GET /associate_attachments
  # GET /associate_attachments.json
  def index
    @associate_attachments = AssociateAttachment.all
  end

  # GET /associate_attachments/1
  # GET /associate_attachments/1.json
  def show
  end

  # GET /associate_attachments/new
  def new
    @associate_attachment = AssociateAttachment.new
  end

  # GET /associate_attachments/1/edit
  def edit
    
  end

  # POST /associate_attachments
  # POST /associate_attachments.json
  def create
    @associate_attachment = AssociateAttachment.new(associate_attachment_params)

    respond_to do |format|
      if @associate_attachment.save
        format.html { redirect_to @associate_attachment, notice: 'Associate attachment was successfully created.' }
        format.json { render :show, status: :created, location: @associate_attachment }
      else
        format.html { render :new }
        format.json { render json: @associate_attachment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /associate_attachments/1
  # PATCH/PUT /associate_attachments/1.json
  def update
    respond_to do |format|
      if @associate_attachment.update(associate_attachment_params)
        format.html { redirect_to @associate_attachment.associate, notice: 'Associate attachment was successfully updated.' }
        format.json { render :show, status: :ok, location: @associate_attachment }
      else
        format.html { render :edit }
        format.json { render json: @associate_attachment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /associate_attachments/1
  # DELETE /associate_attachments/1.json
  def destroy
    @associate_attachment.destroy
    respond_to do |format|
      format.html { redirect_to @associate_attachment.associate, notice: 'Associate attachment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_associate_attachment
      @associate_attachment = AssociateAttachment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def associate_attachment_params
      params.require(:associate_attachment).permit(:associate_id, :avatar)
    end
end