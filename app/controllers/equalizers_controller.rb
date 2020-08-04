class EqualizersController < ApplicationController

    def new
        if @artist = Artist.find_by_id(params[:artist_id])
            @equalizer = @artist.equalizers.build
        else
            @equalizer = Equalizer.new
        end
    end

    def index
        if @artist = Artist.find_by_id(params[:artist_id])
            @equalizers = @artist.equalizers
        else
            @equalizers = Equalizer.all
        end
    end

    def create
        @equalizer = current_user.equalizers.build(equalizer_params)
        if @equalizer.save
            redirect_to equalizer_path(@equalizer)
        else
            render :new
        end
    end

    def show
        @equalizer = Equalizer.find_by(id: params[:id])
    end

    private
    def equalizer_params
        params.require(:equalizer).permit(:artist_id, :settings)
    end
end
