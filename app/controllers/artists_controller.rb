class ArtistsController < ApplicationController

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
            render :new
        end
    end

    def show 
    end


    def artist_params
        params.require(:artist).permit(:artist_name, :genre_id, genre_attributes: [:name])
    end
end
