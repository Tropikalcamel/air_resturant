class AddDetailsToRestaurants < ActiveRecord::Migration[7.1]
  def change
    add_column :restaurants, :opening_hours, :json
    add_column :restaurants, :ratings, :float
    add_column :restaurants, :user_ratings_total, :integer
  end
end
