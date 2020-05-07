class ChangePriceDataTypeToTools < ActiveRecord::Migration[6.0]
  def change
    change_column :tools, :price, :float 
  end
end
