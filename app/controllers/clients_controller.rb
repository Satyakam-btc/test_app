class ClientsController < ApplicationController

  def new
    @client = Client.new
  end

  def create
    @client = Client.create(client_params)

    if @client.save
      redirect_to clients_path
    else
      render 'new'
    end
  end


  def index
    @clients = Client.all
  end

  def destroy
    @client = Client.find(params[:id])
    @client.destroy
    redirect_to root_path
  end

  def show
    @client = Client.find(params[:id])
  end


  private
  def client_params
    params.require(:client).permit(:name, :country)
  end

end


