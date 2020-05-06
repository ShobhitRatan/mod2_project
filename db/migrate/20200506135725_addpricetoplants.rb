class Addpricetoplants < ActiveRecord::Migration[6.0]
  def change
    add_column :plants, :price, :string
  end
end
