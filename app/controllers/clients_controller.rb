class ClientsController < ApplicationController
  def index

  	@clients = Client.all
  end

  def new
  	@clients = Client.new
  end

  def create
  	@clients = Client.new(get_params)

  	if @clients.save

  		redirect_to clients_path
  	else

  		render 'new'
  	end

  	
  end

  def show
  	@clients = Client.find(params[:id])
  end

  def edit
  end


  private

  def get_params

  	params.require(:client).permit(:name,:email,:phone,:address,:active,:account)
  	
  end
end
