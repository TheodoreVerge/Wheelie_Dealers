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
    @user = current_user.id
    @bike = Bike.create(bike_params)
    @bike.user_id = @user
      if @bike.save
        redirect_to bike_path(@bike)
      else
        render :new
      end
  end

  def destroy
    @bike = Bike.find(params[:id])
    @bike.destroy
    redirect_to bikes_path
  end

   private

  def bike_params
    params.require(:bike).permit(:title, :price, :description, :brand)
  end
end
