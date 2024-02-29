class RenameTypeColumnInRestaurants < ActiveRecord::Migration[7.1]
  def change
    rename_column :restaurants, :type, :category
  end
end
