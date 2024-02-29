class AddToRestaurant < ActiveRecord::Migration[7.1]
  def change
    add_column :dietaryRestrictions, :string
  end
end
