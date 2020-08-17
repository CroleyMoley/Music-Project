class ArtistsController < ApplicationController
    before_action :set_artist, only:[:show]
    

    def new 
        @artist = Artist.new 
        @artist.build_genre
    end 

    def create
        @artist = Artist.new(artist_params)
        @artist.user_id = session[:user_id]
        if @artist.save
            redirect_to artist_path(@artist)
        else
            @artist.build_genre
            render :new
        end
    end

    def show 
        @artist = Artist.find_by(id: params[:id])
    end

    def index 
        if params[:user_id]
            @artists = User.find(params[:user_id]).artists
        else
            @artists = Artist.all 
        end
    end

    def edit
    end

  

    private
    def artist_params
        params.require(:artist).permit(:artist_name, :genre_id, genre_attributes: [:name])
    end

    def set_artist
        @artist = Artist.find_by(params[:id])
        redirect_to artists_path if !@artist
    end

end
