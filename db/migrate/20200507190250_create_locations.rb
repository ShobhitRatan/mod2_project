class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.string :name
      t.integer :user_id 
      t.string :apartment
      t.string :street
      t.string :city
      t.string :state
      t.string :country
      t.integer :zipcode
    end
  end
end
