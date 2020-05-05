class CreateToolOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :tool_orders do |t|
      t.integer :tool_id
      t.integer :order_id
      t.float :weight
      t.float :line_total

      t.timestamps
    end
  end
end
