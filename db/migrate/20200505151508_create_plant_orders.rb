class CreatePlantOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :plant_orders do |t|
      t.integer :plant_id
      t.integer :order_id
      t.float :weight
      t.float :line_total

      t.timestamps
    end
  end
end
