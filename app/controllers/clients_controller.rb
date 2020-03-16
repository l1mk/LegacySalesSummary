class ClientsController < ApplicationController

    def index
        @user = User.find_by(id: current_user.id)
        @clients = Client.all 
    end

    def new
        @user = User.find_by(id: current_user.id)
        @client = Client.new
    end

    def create
        @client = Client.new(client_params)
        if @client.save 
            #redirect_to clients_url
        else
            render :new 
        end
    end

    def show
        @user = User.find_by(id: current_user.id)
        @client = Client.find_by(id: params[:id])
    end

    def edit
        @user = User.find_by(id: current_user.id)
        @client = Client.find(params[:id])
    end

    def update
        @client = Client.find(params[:id])
        @client.update(client_params)
        if @client.save 
            redirect_to clients_url
        else
            render :edit
        end
    end

    def destroy
        @client = Client.find(params[:id])
        @client.destroy 
        flash[:notice] = "Client deleted"
        redirect_to clients_path
    end


    private 
    def client_params 
        params.require(:client).permit(:company, :dm, :address, :phone, :email)
    end

end
