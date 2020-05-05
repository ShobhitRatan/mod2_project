class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.datetime :date
      t.datetime :arrival_estimate
      t.integer :location_id
      t.integer :user_id
      t.float :total_price
      t.float :tax
      t.float :shipping_fee
      t.float :weight

      t.timestamps
    end
  end
end
