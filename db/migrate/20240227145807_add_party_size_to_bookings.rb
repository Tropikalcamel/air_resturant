class AddPartySizeToBookings < ActiveRecord::Migration[7.1]
  def change
    add_column :bookings, :party_size, :string
  end
end
