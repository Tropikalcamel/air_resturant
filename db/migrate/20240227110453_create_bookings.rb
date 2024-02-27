class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :restaurant, null: false, foreign_key: true
      t.date :booking_date
      t.time :booking_time
      t.boolean :status

      t.timestamps
    end
  end
end
