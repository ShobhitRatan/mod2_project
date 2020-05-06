class AddOrderStatusToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :order_status, :boolean
  end
end
