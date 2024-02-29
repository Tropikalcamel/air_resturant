class AddDietaryRestrictionsToRestaurants < ActiveRecord::Migration[7.1]
  def change
    add_column :restaurants, :dietaryRestrictions, :string
  end
end
