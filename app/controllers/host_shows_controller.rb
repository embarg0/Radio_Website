class HostShowsController < ApplicationController
  before_action :set_host_show, only: [:show, :edit, :update, :destroy]

  # GET /host_shows
  # GET /host_shows.json
  def index
    @host_shows = HostShow.all
  end

  # GET /host_shows/1
  # GET /host_shows/1.json
  def show
  end

  # GET /host_shows/new
  def new
    @host_show = HostShow.new
  end

  # GET /host_shows/1/edit
  def edit
  end

  # POST /host_shows
  # POST /host_shows.json
  def create
    @host_show = HostShow.new(host_show_params)

    respond_to do |format|
      if @host_show.save
        format.html { redirect_to @host_show, notice: 'Host show was successfully created.' }
        format.json { render action: 'show', status: :created, location: @host_show }
      else
        format.html { render action: 'new' }
        format.json { render json: @host_show.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /host_shows/1
  # PATCH/PUT /host_shows/1.json
  def update
    respond_to do |format|
      if @host_show.update(host_show_params)
        format.html { redirect_to @host_show, notice: 'Host show was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @host_show.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /host_shows/1
  # DELETE /host_shows/1.json
  def destroy
    @host_show.destroy
    respond_to do |format|
      format.html { redirect_to host_shows_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_host_show
      @host_show = HostShow.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def host_show_params
      params.require(:host_show).permit(:hostStartYear, :hostStartMonth)
    end
end
