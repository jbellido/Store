class NecksController < ApplicationController
  before_action :set_neck, only: [:show, :edit, :update, :destroy]

  # GET /necks
  # GET /necks.json
  def index
    @necks = Neck.all
  end

  # GET /necks/1
  # GET /necks/1.json
  def show
  end

  # GET /necks/new
  def new
    @neck = Neck.new
  end

  # GET /necks/1/edit
  def edit
  end

  # POST /necks
  # POST /necks.json
  def create
    @neck = Neck.new(neck_params)

    respond_to do |format|
      if @neck.save
        format.html { redirect_to @neck, notice: 'Neck was successfully created.' }
        format.json { render :show, status: :created, location: @neck }
      else
        format.html { render :new }
        format.json { render json: @neck.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /necks/1
  # PATCH/PUT /necks/1.json
  def update
    respond_to do |format|
      if @neck.update(neck_params)
        format.html { redirect_to @neck, notice: 'Neck was successfully updated.' }
        format.json { render :show, status: :ok, location: @neck }
      else
        format.html { render :edit }
        format.json { render json: @neck.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /necks/1
  # DELETE /necks/1.json
  def destroy
    @neck.destroy
    respond_to do |format|
      format.html { redirect_to necks_url, notice: 'Neck was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_neck
      @neck = Neck.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def neck_params
      params.require(:neck).permit(:description)
    end
end
