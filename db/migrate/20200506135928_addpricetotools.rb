class Addpricetotools < ActiveRecord::Migration[6.0]
  def change
    add_column :tools, :price, :string
  end
end
