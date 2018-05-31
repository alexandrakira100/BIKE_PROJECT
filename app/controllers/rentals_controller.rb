class RentalsController < ApplicationController
  def index
    @rentals = Rental.all
  end

  def create
    @rental = Rental.new(rental_params)
    @rental.bike = Bike.find(params[:bike_id])
    @rental.user = current_user
    binding.pry
    if @rental.save
      redirect_to rentals_path
    else
      render :new
    end
  end

  def destroy
    @rental = Rental.find(params[:id])
    @rental.destroy
    redirect_to rentals_path
  end

  private

  def rental_params
    params.require(:rental).permit(:start_date, :end_date)
  end
end
