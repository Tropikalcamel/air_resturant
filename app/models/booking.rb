class Booking < ApplicationRecord
  belongs_to :user , dependent: :destroy
  belongs_to :restaurant
  validates :date, :time

end
