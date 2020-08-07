class GenresController < ApplicationController
    before_action :redirect_if_not_logged_in

    def index
        @genres = Genre.all 
    end

    def new
        @genre = Genre.new
    end

    
end
