class WrklocsController < ApplicationController
  before_action :set_wrkloc, only: [:show, :edit, :update, :destroy]

  # GET /wrklocs
  # GET /wrklocs.json
  def index
    @wrklocs = Wrkloc.all
  end

  # GET /wrklocs/1
  # GET /wrklocs/1.json
  def show
  end

  # GET /wrklocs/new
  def new
    @wrkloc = Wrkloc.new
  end

  # GET /wrklocs/1/edit
  def edit
  end

  # POST /wrklocs
  # POST /wrklocs.json
  def create
    @wrkloc = Wrkloc.new(wrkloc_params)

    respond_to do |format|
      if @wrkloc.save
        format.html { redirect_to @wrkloc, notice: 'Wrkloc was successfully created.' }
        format.json { render :show, status: :created, location: @wrkloc }
      else
        format.html { render :new }
        format.json { render json: @wrkloc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wrklocs/1
  # PATCH/PUT /wrklocs/1.json
  def update
    respond_to do |format|
      if @wrkloc.update(wrkloc_params)
        format.html { redirect_to @wrkloc, notice: 'Wrkloc was successfully updated.' }
        format.json { render :show, status: :ok, location: @wrkloc }
      else
        format.html { render :edit }
        format.json { render json: @wrkloc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wrklocs/1
  # DELETE /wrklocs/1.json
  def destroy
    @wrkloc.destroy
    respond_to do |format|
      format.html { redirect_to wrklocs_url, notice: 'Wrkloc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wrkloc
      @wrkloc = Wrkloc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wrkloc_params
      params.require(:wrkloc).permit(:wrkstate)
    end
end
