class CreatePlants < ActiveRecord::Migration[6.0]
  def change
    create_table :plants do |t|
      t.string :common_name 
      t.string :scientific_name 
      t.float :precipitation_maximum 
      t.float :temperature_minimum
      t.float :precipitation_minimum 
      t.string :moisture_use 
      t.integer :serial_id

      t.timestamps
    end
  end
end
