class PlaysheetsController < ApplicationController
  before_action :set_playsheet, only: [:show, :edit, :update, :destroy]

  # GET /playsheets
  # GET /playsheets.json
  def index
    @playsheets = Playsheet.all
  end

  # GET /playsheets/1
  # GET /playsheets/1.json
  def show
  end

  # GET /playsheets/new
  def new
    @playsheet = Playsheet.new
  end

  # GET /playsheets/1/edit
  def edit
  end

  # POST /playsheets
  # POST /playsheets.json
  def create
    @playsheet = Playsheet.new(playsheet_params)

    respond_to do |format|
      if @playsheet.save
        format.html { redirect_to @playsheet, notice: 'Playsheet was successfully created.' }
        format.json { render action: 'show', status: :created, location: @playsheet }
      else
        format.html { render action: 'new' }
        format.json { render json: @playsheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /playsheets/1
  # PATCH/PUT /playsheets/1.json
  def update
    respond_to do |format|
      if @playsheet.update(playsheet_params)
        format.html { redirect_to @playsheet, notice: 'Playsheet was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @playsheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /playsheets/1
  # DELETE /playsheets/1.json
  def destroy
    @playsheet.destroy
    respond_to do |format|
      format.html { redirect_to playsheets_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_playsheet
      @playsheet = Playsheet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def playsheet_params
      params.require(:playsheet).permit(:date, :day_of_week)
    end
end
