class UsersController < ApplicationController

    before_action :require_login, only: [:edit, :destroy]
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
        @user = User.find_by(id: params[:id])
        @weeks = Week.all
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
        @user.update(user_params)
        if @user.save 
            redirect_to @user 
        else
            render :edit
        end
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy 
        flash[:notice] = "User deleted"
        redirect_to users_path
    end


    private 
    def user_params 
        params.require(:user).permit(:username, :email, :password, :position, :week_id)
    end

    def require_login
        return head(:forbidden) unless session.include? :user_id
    end

end