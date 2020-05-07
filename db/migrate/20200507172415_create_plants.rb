class CreatePlants < ActiveRecord::Migration[6.0]
  def change
    create_table :plants do |t| 
      t.float :price 
      t.float :weight 
      t.integer :quantity
      t.string :common_name 
      t.string :scientific_name 
      t.float :temperature_minimum 
      t.float :precipitation_minimum
      t.float :precipitation_maximum
      t.integer :serial
      t.string :moisture_use
    end
  end
end
