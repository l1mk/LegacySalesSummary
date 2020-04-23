class HauntedsController < ApplicationController
    def index
        @haunteds = Haunted.all 
        @week = Week.find_by(id: params[:id])
    end

    def new
        @haunted = Haunted.new
        @week = Week.find_by(id: params[:id])
        @clients = Client.all 
    end

    def create
        @clients = Client.all
        @user = User.find_by(id: current_user.id)
        @haunted = Haunted.new(haunted_params)
        @haunted.user = @user
        if @haunted.save 
            #redirect_to user_week_haunteds_url
            redirect_to user_weeks_url
        else
            render :new 
        end
    end

    def show
        @haunted = Haunted.find_by(id: params[:id])
        @week = Week.find_by(id: @haunted.week_id)
        @client = Client.find_by(id: @haunted.client_id) 
    end

    def edit
        @haunted = Haunted.find(params[:id])
        @clients = Client.all 
    end

    def update
        @clients = Client.all 
        @haunted = Haunted.find(params[:id])
        @haunted.update(haunted_params)
        if @haunted.save 
            redirect_to user_week_haunteds_url
        else
            render :edit
        end
    end

    def destroy
        @haunted = Haunted.find(params[:id])
        @haunted.destroy 
        flash[:notice] = "Haunted deleted"
        redirect_to user_week_haunteds_path
    end


    private 
    def haunted_params 
        params.require(:haunted).permit(:payment, :recap, :order_number, :fds_amount, :date_of_the_order, :week_id, :client_id, :user_id)
    end

end
