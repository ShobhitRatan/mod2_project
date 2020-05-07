class Deleteweightfromplantorders < ActiveRecord::Migration[6.0]
  def change
    remove_column :plant_orders, :weight
  end
end
