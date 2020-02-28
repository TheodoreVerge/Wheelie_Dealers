class BikesController < ApplicationController

 def index
    if params[:query].blank?
      @bikes = Bike.all
    else
      @bikes = Bike.search_by_address_and_price(params[:query])
    end
    @markers = @bikes.geocoded.map do |bike|
      {
        lat: bike.latitude,
        lng: bike.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { bike: bike })
      }
    end
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
    params.require(:bike).permit(:title, :price, :description, :brand, :address, photos: [])
  end
end
