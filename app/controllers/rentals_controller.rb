class RentalsController < ApplicationController
  def index
    @rentals = Rental.all
  end

  def new
    @rental = Rental.new
  end

  def create
    @rental = Rental.new(rental_params)
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
