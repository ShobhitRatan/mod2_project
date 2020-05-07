class AddQuantitytoPlantOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :plant_orders, :quantity, :integer
  end
end
