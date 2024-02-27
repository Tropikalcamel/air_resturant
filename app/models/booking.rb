class Booking < ApplicationRecord
  belongs_to :user , dependent: :destroy
  belongs_to :restaurant
  validates :booking_date, :booking_time, :party_size, presence: true

end
