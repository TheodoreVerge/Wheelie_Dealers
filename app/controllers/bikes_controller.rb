class BikesController < ApplicationController

  def index
  @bikes = Bike.all
  end

  def show
  @bike = Bike.find(params[:id])
  end

  def new
  @bike = Bike.new
  end

  def create
  @bike = Bike.create(bike_params)
  raise
  if @bike.save
    redirect_to bikes_path
  else
    render :new
  end
  end

   private

  def bike_params
    params.require(:bike).permit(:id, :price, :description, :brand)
  end
end
