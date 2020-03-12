class SessionsController < ApplicationController

    def index 
    end

    def new
        @users.all
    end

    def create
        @user = User.find_by(username: params[:user][:username])
        return head(:forbidden) unless @user.authenticate(params[:user][:password])
        log_in(@user)
        redirect_to @user
    end

    def detroy 
        log_out 
        redirect_to root_url
    end


end
