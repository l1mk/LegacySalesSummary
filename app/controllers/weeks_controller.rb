class WeeksController < ApplicationController

    def index
        @weeks = Week.all 
        @user = User.find_by(id: current_user.id)
    end

    def new
        @week = Week.new
    end

    def create
        @week = Week.new(week_params)
        if @week.save 
            redirect_to user_weeks_url
        else
            render :new 
        end
    end

    def show
        @user = User.find_by(id: current_user.id)
        @week = Week.find_by(id: params[:id])
    end

    def edit
        @week = Week.find(params[:id])
    end

    def update
        @week = Week.find(params[:id])
        @week.update(week_params)
        if @week.save 
            redirect_to user_weeks_url
        else
            render :edit
        end
    end

    def destroy
        @week = Week.find(params[:id])
        @week.destroy 
        flash[:notice] = "Week deleted"
        redirect_to user_weeks_path
    end


    private 
    def week_params 
        params.require(:week).permit(:week_number, :user_id)
    end


end
