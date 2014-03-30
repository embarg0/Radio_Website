class StaticPagesController < ApplicationController
  def home
  end

  def rls
  end
  
  def news
  end

  def database


    #PLAYSHEET RELATED SEARCHES
    unless params[:search].blank?

        if params[:search].try(:downcase).try(:match,(/(list|all|every|).*(playsheet|play sheet)/))
          @search = Playsheet.search
        else
            @search = Playsheet.search do
            fulltext params[:search]
            end
        end
        @playsheets = @search.results

    #TRACK RELATED SEARCHES
        if params[:search].try(:downcase).try(:match,(/(list|all|every|).*(track)/))
          @search = Track.search
        #elsif params[:search].try(:downcase).try(:match,(/(add in|affiliate).*(track)/))
         #   @search = Track.search do
          #      if(param[track[]] == "Track")
           # with(:playsheet_id, [1,2])
            #    end
            #end
        else
            @search = Track.search do
            fulltext params[:search]

            end
        end
        @tracks = @search.results

    #ALBUM RELATED SEARCHES
        if params[:search].try(:downcase).try(:match, (/(list|all|every|).*(album)/))
          @search = Album.search
        else
            @search = Album.search do
            fulltext params[:search]
            end
        end
        @albums = @search.results

    #HOSTSSHOW RELATED SEARCHES
        if params[:search].try(:downcase).match(/(list|all|every|).*(host show|hostshow)/)
          @search = HostsShow.search
        else
            @search = HostsShow.search do
            fulltext params[:search]
            end
        end
        @hosts_shows = @search.results

    #GUEST RELATED SEARCHES
        if params[:search].try(:downcase).match(/(list|all|every|).*(guest)/)
          @search = Guest.search
        else
            @search = Guest.search do
            fulltext params[:search]
            end
        end
        @guests = @search.results

    #ARTIST RELATED SEARCHES
        if params[:search].try(:downcase).match(/(list|all|every|).*(artist)/)
          @search = Artist.search
        else
            @search = Artist.search do
            fulltext params[:search]
            end
        end
        @artists = @search.results

    #BAND RELATED SEARCHES
        if params[:search].try(:downcase).match(/(list|all|every|).*(band)/)
          @search = Band.search
            else
            @search = Band.search do
            fulltext params[:search]
            end
        end
        @bands = @search.results

    #HOST RELATED SEARCHES
        if params[:search].try(:downcase).match(/(list|all|every|).*(host)/)
          @search = Host.search
        elsif params[:search].try(:downcase).match(/.*(category:?).*/)
          temp = params[:search].split(' ')[1..-1].join(' ')
          @search = Host.search do
            fulltext temp
          end
        else
            @search = Host.search do
            fulltext params[:search]
            end
        end
        @hosts = @search.results    

    #SHOW RELATED SEARCHES
        if params[:search].try(:downcase).match(/(list|all|every|).*(show)/)
          @search = Show.search
        else
            @search = Show.search do
            fulltext params[:search]
            end
        end
        @shows = @search.results

    #SONG RELATED SEARCHES
        if params[:search].try(:downcase).match(/(list|all|every|).*(song)/)
          @search = Song.search
        else
          @search = Song.search do
            fulltext params[:search]
            stat(:song_id, type: "max")
          end
        end
        @songs = @search.results

    #TIMESLOT RELATED SEARCHES
        if params[:search].try(:downcase).match(/(list|all|every|).*(timeslot|time)/)
          @search = Timeslot.search
        else
          @search = Timeslot.search do
            fulltext params[:search]
          end
        end
        @timeslots = @search.results


    else
        @songs = Song.all  
        @hosts_shows = HostsShow.all
        @guests = Guest.all
        @albums = Album.all
        @artists = Artist.all
        @bands = Band.all
        @hosts = Host.all
        @playsheets = Playsheet.all
        @shows = Show.all
        @timeslots = Timeslot.all
       @tracks = Track.all
    end

  end
  
end
