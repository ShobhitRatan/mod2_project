class AddQuantitytoToolOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :tool_orders, :quantity, :integer
  end
end
