class BikesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :set_bike, only: [:show, :edit, :update, :destroy]

  def index
    @bikes = Bike.all
  end

  def show
    @rental = Rental.new
    @markers = [ {
      lat: @bike.latitude,
      lng: @bike.longitude
    } ]
  end

  def new
    @bike = Bike.new
  end

  def create
    @bike = Bike.new(bike_params)
    @bike.user = current_user
    if @bike.save
      redirect_to bike_path(@bike)
    else
      render "bikes/show"
    end
  end

  def edit
  end

  def update
    @bike.update(bike_paramas)
    redirect_to bike_path(@bike)
  end

  def destroy
    @bike.destroy
    redirect_to bikes_path
  end

  private

  def bike_params
    params.require(:bike).permit(:size, :basket, :price_per_day, :neighborhood, :description, :photo, :pickup_address)
  end

  def set_bike
    @bike = Bike.find(params[:id])
  end

end
