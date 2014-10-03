class SleevesController < ApplicationController
  before_action :set_sleefe, only: [:show, :edit, :update, :destroy]

  # GET /sleeves
  # GET /sleeves.json
  def index
    @sleeves = Sleeve.all
  end

  # GET /sleeves/1
  # GET /sleeves/1.json
  def show
  end

  # GET /sleeves/new
  def new
    @sleefe = Sleeve.new
  end

  # GET /sleeves/1/edit
  def edit
  end

  # POST /sleeves
  # POST /sleeves.json
  def create
    @sleefe = Sleeve.new(sleefe_params)

    respond_to do |format|
      if @sleefe.save
        format.html { redirect_to @sleefe, notice: 'Sleeve was successfully created.' }
        format.json { render :show, status: :created, location: @sleefe }
      else
        format.html { render :new }
        format.json { render json: @sleefe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sleeves/1
  # PATCH/PUT /sleeves/1.json
  def update
    respond_to do |format|
      if @sleefe.update(sleefe_params)
        format.html { redirect_to @sleefe, notice: 'Sleeve was successfully updated.' }
        format.json { render :show, status: :ok, location: @sleefe }
      else
        format.html { render :edit }
        format.json { render json: @sleefe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sleeves/1
  # DELETE /sleeves/1.json
  def destroy
    @sleefe.destroy
    respond_to do |format|
      format.html { redirect_to sleeves_url, notice: 'Sleeve was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sleefe
      @sleefe = Sleeve.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sleefe_params
      params.require(:sleefe).permit(:description)
    end
end
