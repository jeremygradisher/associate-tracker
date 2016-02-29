class AssociateW9sController < ApplicationController
  before_action :set_associate_w9, only: [:show, :edit, :update, :destroy]

  # GET /associate_w9s
  # GET /associate_w9s.json
  def index
    @associate_w9s = AssociateW9.all
  end

  # GET /associate_w9s/1
  # GET /associate_w9s/1.json
  def show
  end

  # GET /associate_w9s/new
  def new
    @associate_w9 = AssociateW9.new
  end

  # GET /associate_w9s/1/edit
  def edit
  end

  # POST /associate_w9s
  # POST /associate_w9s.json
  def create
    @associate_w9 = AssociateW9.new(associate_w9_params)

    respond_to do |format|
      if @associate_w9.save
        format.html { redirect_to @associate_w9, notice: 'Associate w9 was successfully created.' }
        format.json { render :show, status: :created, location: @associate_w9 }
      else
        format.html { render :new }
        format.json { render json: @associate_w9.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /associate_w9s/1
  # PATCH/PUT /associate_w9s/1.json
  def update
    respond_to do |format|
      if @associate_w9.update(associate_w9_params)
        format.html { redirect_to @associate_w9, notice: 'Associate w9 was successfully updated.' }
        format.json { render :show, status: :ok, location: @associate_w9 }
      else
        format.html { render :edit }
        format.json { render json: @associate_w9.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /associate_w9s/1
  # DELETE /associate_w9s/1.json
  def destroy
    @associate_w9.destroy
    respond_to do |format|
      format.html { redirect_to associate_w9s_url, notice: 'Associate w9 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_associate_w9
      @associate_w9 = AssociateW9.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def associate_w9_params
      params.require(:associate_w9).permit(:associate_id, :w9)
    end
end
