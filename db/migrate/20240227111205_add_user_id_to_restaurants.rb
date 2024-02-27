class AddUserIdToRestaurants < ActiveRecord::Migration[7.1]
  def change
    add_reference :restaurants, :user, null: false, foreign_key: true
  end
end
