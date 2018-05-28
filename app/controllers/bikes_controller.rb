class BikesController < ApplicationController
  def index
    @bikes = Bike.all
  end

  def new
    bike = Bike.new
  end

  def create
    bike = Bike.new()
  end

  private

  def bike_params
    params.require(:bike).permit(:)
  end

end
