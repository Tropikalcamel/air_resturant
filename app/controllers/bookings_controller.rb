class BookingsController < ApplicationController
  before_action :set_booking, only: %i[ new create status  ]

  def new
    @booking = Booking.new
  end

def create
  @booking = Booking.new(booking_params)
  @user.booking = @booking
  if @booking.save
    redirect_to new_user_booking
  else
    @bookings = @user.bookings
    render "booking/new", status: :unprocessable_entity
  end
end

def status!
@booking = Booking.status
end

private

def booking_params
  params.require(:booking).permit(:date, :time)
  end
def set_booking
  @user = User.find(params[:user_id])
end
end
