class CreateRestaurants < ActiveRecord::Migration[7.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.string :phone_number
      t.text :description
      t.boolean :vegetarian
      t.string :image

      t.timestamps
    end
  end
end
