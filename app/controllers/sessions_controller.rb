class SessionsController < ApplicationController

    def index 
    end

    def new
        @users = User.all
    end

    def create
        @user = User.find_by(id: params[:user_id])
        return head(:forbidden) unless @user.authenticate(params[:password])
        log_in(@user)
        redirect_to @user
    end

    def destroy 
        log_out 
        redirect_to root_url
    end


end
