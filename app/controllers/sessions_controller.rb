class SessionsController < ApplicationController

    def index

    end

    def new

    end

    def destroy
        session.delete(:user_id)
        redirect_to '/'
    end
    
end
