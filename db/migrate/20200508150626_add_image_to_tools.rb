class AddImageToTools < ActiveRecord::Migration[6.0]
  def change
    add_column :tools, :image, :string
  end
end
