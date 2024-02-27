class AddImageToRestaurants < ActiveRecord::Migration[7.1]
  def change
    add_column :restaurants, :image, :string
  end
end
