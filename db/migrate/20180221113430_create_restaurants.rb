class CreateRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurants do |t|
      t.text :name
      t.string :address
      t.integer :phone_number
      t.string :category

      t.timestamps
    end
  end
end