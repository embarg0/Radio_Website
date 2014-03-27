class SongInventoriesController < ApplicationController
  before_action :set_song_inventory, only: [:show, :edit, :update, :destroy]

  # GET /song_inventories
  # GET /song_inventories.json
  def index
    @song_inventories = SongInventory.all
  end

  # GET /song_inventories/1
  # GET /song_inventories/1.json
  def show
  end

  # GET /song_inventories/new
  def new
    @song_inventory = SongInventory.new
  end

  # GET /song_inventories/1/edit
  def edit
  end

  # POST /song_inventories
  # POST /song_inventories.json
  def create
    @song_inventory = SongInventory.new(song_inventory_params)

    respond_to do |format|
      if @song_inventory.save
        format.html { redirect_to @song_inventory, notice: 'Song inventory was successfully created.' }
        format.json { render action: 'show', status: :created, location: @song_inventory }
      else
        format.html { render action: 'new' }
        format.json { render json: @song_inventory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /song_inventories/1
  # PATCH/PUT /song_inventories/1.json
  def update
    respond_to do |format|
      if @song_inventory.update(song_inventory_params)
        format.html { redirect_to @song_inventory, notice: 'Song inventory was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @song_inventory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /song_inventories/1
  # DELETE /song_inventories/1.json
  def destroy
    @song_inventory.destroy
    respond_to do |format|
      format.html { redirect_to song_inventories_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_song_inventory
      @song_inventory = SongInventory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def song_inventory_params
      params.require(:song_inventory).permit(:songID, :title, :cancon, :instrumental, :artistiID, :albumID)
    end
end
