class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save 
            log_in(@user)
            redirect_to @user 
        else
            render :new 
        end
    end

    def show
    end

    def edit
    end

    def update
    end

    private 
    def user_params 
        params.require(:user).permit(:username, :email, :password, :position, :week_id)
    end


end
