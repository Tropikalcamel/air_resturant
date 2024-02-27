class Restaurant < ApplicationRecord
  has_many :bookings
  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true
  validates :image, presence: true
end
