class BookingsController < ApplicationController
  before_action :set_restaurant, only: %i[ new create status  ]

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
    @bookings = @user.bookings
    render "booking/new", status: :unprocessable_entity
  end
end


private

def booking_params
  params.require(:booking).permit(:booking_date, :booking_time)
  end
def set_restaurant
  @restaurant = Restaurant.find(params[:restaurant_id])
end
end
