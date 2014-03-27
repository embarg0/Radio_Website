class PlaySheetsController < ApplicationController
  before_action :set_play_sheet, only: [:show, :edit, :update, :destroy]

  # GET /play_sheets
  # GET /play_sheets.json
  def index
    @play_sheets = PlaySheet.all
  end

  # GET /play_sheets/1
  # GET /play_sheets/1.json
  def show
  end

  # GET /play_sheets/new
  def new
    @play_sheet = PlaySheet.new
  end

  # GET /play_sheets/1/edit
  def edit
  end

  # POST /play_sheets
  # POST /play_sheets.json
  def create
    @play_sheet = PlaySheet.new(play_sheet_params)

    respond_to do |format|
      if @play_sheet.save
        format.html { redirect_to @play_sheet, notice: 'Play sheet was successfully created.' }
        format.json { render action: 'show', status: :created, location: @play_sheet }
      else
        format.html { render action: 'new' }
        format.json { render json: @play_sheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /play_sheets/1
  # PATCH/PUT /play_sheets/1.json
  def update
    respond_to do |format|
      if @play_sheet.update(play_sheet_params)
        format.html { redirect_to @play_sheet, notice: 'Play sheet was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @play_sheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /play_sheets/1
  # DELETE /play_sheets/1.json
  def destroy
    @play_sheet.destroy
    respond_to do |format|
      format.html { redirect_to play_sheets_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_play_sheet
      @play_sheet = PlaySheet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def play_sheet_params
      params.require(:play_sheet).permit(:playSheetNum, :date, :dateOfWeek)
    end
end
