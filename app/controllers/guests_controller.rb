class GuestsController < ApplicationController
  before_action :set_guest, only: [:show, :edit, :update, :destroy]

  # GET /guests
  # GET /guests.json
  def index
    @guests = Guest.all
  end

  def topGuest
    max = @guests[0]
    for guest in @guests
      if max.rating < guest
        max = guest
      end
    end
    return guest
  end

  # GET /guests/1
  # GET /guests/1.json
  def show
  end

  # GET /guests/new
  def new
    @guest = Guest.new
  end

  # GET /guests/1/edit
  def edit
  end

  # POST /guests
  # POST /guests.json
  def create
    @guest = Guest.new(guest_params)

    if @guest.save
      redirect_to guests_path
    else
      #DO NOTHING
    end

  end

  # PATCH/PUT /guests/1
  # PATCH/PUT /guests/1.json
  def update
    
    if @hosts_show.update(guest_params)
      redirect_to guests_path
    else
      #DO NOTHING
    end

  end

  # DELETE /guests/1
  # DELETE /guests/1.json
  def destroy
    @guest.destroy
    redirect_to guests_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_guest
      @guest = Guest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def guest_params
      params.require(:guest).permit(:last_name, :description, :topic, :rating, :timeslot_id)
    end
end
