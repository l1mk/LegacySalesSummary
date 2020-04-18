class WeeksController < ApplicationController

    def index
        #@weeks = Week.all 
        @user = User.find_by(id: current_user.id)
        @weeks = @user.weeks.all
        @months = Month.all
    end

    def new
        @week = Week.new
        @months = Month.all
    end

    def create
        @months = Month.all
        @week = Week.new(week_params)
        @week.month = Month.find_by(id: params[:month_id])
        if @week.save 
            redirect_to user_weeks_url
        else
            render :new 
        end
    end

    def show
        @user = User.find_by(id: current_user.id)
        @week = Week.find_by(id: params[:id])
        @client = Client.new
        @clients = Client.all 
    end

    def edit
        @week = Week.find(params[:id])
        @months = Month.all
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
        params.require(:week).permit(:week_number, :user_id, :month_id)
    end


end
