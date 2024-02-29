class AddTypeToRestaurants < ActiveRecord::Migration[7.1]
  def change
    add_column :restaurants, :type, :text
  end
end
