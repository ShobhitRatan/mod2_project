class ChangePriceDataTypeToPlants < ActiveRecord::Migration[6.0]
  def change
    change_column :plants, :price, :float 
  end
end
