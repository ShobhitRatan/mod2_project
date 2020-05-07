class CreateTools < ActiveRecord::Migration[6.0]
  def change
    create_table :tools do |t|
      t.string :name
      t.float :price
      t.integer :weight
      t.integer :quantity
      t.string :description
    end
  end
end
