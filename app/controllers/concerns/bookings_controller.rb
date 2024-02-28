# app/controllers/bookings_controller.rb
class BookingsController < ApplicationController
  before_action :authenticate_user! # Assuming Devise for authentication

  def cancel
    @booking = current_user.bookings.find(params[:id])

    if @booking.update(status: :canceled)
      redirect_to user_bookings_path, notice: 'Booking canceled successfully.'
    else
      redirect_to user_bookings_path, alert: 'Failed to cancel booking.'
    end
  end

  # Add other actions (index, show, create, etc.) as needed
end


