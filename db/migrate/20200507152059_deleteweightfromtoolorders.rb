class Deleteweightfromtoolorders < ActiveRecord::Migration[6.0]
  def change
    remove_column :tool_orders, :weight
  end
end
