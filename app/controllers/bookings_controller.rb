class BookingsController < ApplicationController
  before_action :set_restaurant, only: %i[ new create destroy]

  def new
    @booking = Booking.new
  end

def create
  @booking = Booking.new(booking_params)
  @booking.user = current_user
  @booking.restaurant = @restaurant
    if @booking.save
    redirect_to root_path
    # needs to go confiramtion page
  else
    render "bookings/new", status: :unprocessable_entity
  end
end



def destroy
    @booking = Resturant.find(params[:id])
    @booking.destroy
    redirect_to root_path(@restaurant.booking), status: :see_other
  end

private

def booking_params
  params.require(:booking).permit(:party_size, :booking_date, :booking_time)
end

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
