class EqualizersController < ApplicationController

    def new
        @artist = Artist.find_by(id: params[:id])
        @equalizer = @artist.build_equalizer
    end

    def index

    end
end
