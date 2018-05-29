class RentalsController < ApplicationController
  def index
    @rentals = Rental.all
  end

  def create
    @rental = Rental.new(rental_params)
    @rental.bike = Bike.find(params[:bike_id])
    @rental.user = current_user
    if @rental.save
      redirect_to rental_confirmation_path(@rental)
    else
      render :new
    end
  end

  def destroy
    @rental = Rental.find(params[:id])
    @rental.destroy
  end

  private

  def rental_params
    params.require(:rental).permit(:start_date, :end_date)
  end
end
