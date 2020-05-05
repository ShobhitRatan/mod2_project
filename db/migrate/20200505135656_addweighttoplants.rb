class Addweighttoplants < ActiveRecord::Migration[6.0]
  def change
    add_column :plants, :weight, :integer
  end
end
