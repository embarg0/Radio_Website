class HostsShowsController < ApplicationController
  before_action :set_hosts_show, only: [:show, :edit, :update, :destroy]

  # GET /hosts_shows
  # GET /hosts_shows.json
  def index
    @hosts_shows = HostsShow.all
  end

  # GET /hosts_shows/1
  # GET /hosts_shows/1.json
  def show
  end

  # GET /hosts_shows/new
  def new
    @hosts_show = HostsShow.new
  end

  # GET /hosts_shows/1/edit
  def edit
  end

  # POST /hosts_shows
  # POST /hosts_shows.json
  def create
    @hosts_show = HostsShow.new(hosts_show_params)

    if @hosts_show.save
      redirect_to hosts_shows_path
    else
      #DO NOTHING
    end

  end

  # PATCH/PUT /hosts_shows/1
  # PATCH/PUT /hosts_shows/1.json
  def update

    if @hosts_show.update(hosts_show_params)
      redirect_to hosts_shows_path
    else
      #DO NOTHING
    end

  end

  # DELETE /hosts_shows/1
  # DELETE /hosts_shows/1.json
  def destroy
    @hosts_show.destroy
    redirect_to hosts_shows_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hosts_show
      @hosts_show = HostsShow.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hosts_show_params
      params.require(:hosts_show).permit(:host_id, :show_id, :host_start_date, :contract_number)
    end
end
