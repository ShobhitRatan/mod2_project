class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.string :country
      t.string :state
      t.string :city
      t.string :street
      t.string :apartment
      t.integer :zipcode
    end
  end
end
