class CreateTools < ActiveRecord::Migration[6.0]
  def change
    create_table :tools do |t| 
      t.string :name 
      t.string :description
      t.integer :weight
    end
  end
end
