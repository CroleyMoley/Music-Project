class ArtistsController < ApplicationController
    before_action :set_artist, only:[:show, :edit, :update]

    def new 
        @artist = Artist.new 
        @artist.build_genre
    end 

    def create
        @artist = Artist.new(artist_params)
        @artist.user_id = session[:user_id]
        if @artist.save
            @artist.image.purge
            @artist.image.attach(params[:artist][:image])
            redirect_to artist_path(@artist)
        else
            @artist.build_genre
            render :new
        end
    end

    def show 
        
    end

    def index 
        @artist = Artist.all 
    end

    def edit
    end

    def update
        if @artist.update(artist_params)
            @artist.image.purge
            @artist.image.attach(params[:artist][:image])
            redirect_to artist_path(@artist)
        else
            render :edit
        end
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
