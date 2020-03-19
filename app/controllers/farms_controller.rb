class FarmsController < ApplicationController
        def index
            @farms = Farm.all 
            @week = Week.find_by(id: params[:id])
        end
    
        def new
            @farm = Farm.new
            @week = Week.find_by(id: params[:id])
            @clients = Client.all 
        end
    
        def create
            @clients = Client.all
            @farm = Farm.new(farm_params)
            @farm.client = Client.find_by(id: params[:client_id])
            if @farm.save 
                redirect_to user_week_farms_url
            else
                render :new 
            end
        end
    
        def show
            @farm = Farm.find_by(id: params[:id])
            @week = Week.find_by(id: @farm.week_id)
            @client = Client.find_by(id: @farm.client_id) 
        end
    
        def edit
            @farm = Farm.find(params[:id])
        end
    
        def update
            @farm = Farm.find(params[:id])
            @farm.update(farm_params)
            if @farm.save 
                redirect_to user_week_farms_url
            else
                render :edit
            end
        end
    
        def destroy
            @farm = Farm.find(params[:id])
            @farm.destroy 
            flash[:notice] = "Farm deleted"
            redirect_to user_week_farms_path
        end
    
    
        private 
        def farm_params 
            params.require(:farm).permit(:amount, :recap, :date_of_visit, :week_id, :client_id)
        end

end
