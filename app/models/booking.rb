# app/models/booking.rb
class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant
  enum status: [:pending, :confirmed, :canceled]
  # Add any other necessary validations or methods
  validates :booking_date, :booking_time, :party_size, presence: true
end
