class AddCuisineToRestaurants < ActiveRecord::Migration[7.1]
  def change
    add_column :restaurants, :cuisine, :string
  end
end
