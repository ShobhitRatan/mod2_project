class Order < ApplicationRecord
    belongs_to :user
    belongs_to :location 
    has_many :plant_orders 
    has_many :plants, through: :plant_orders 
    has_many :tool_orders 
    has_many :tools, through: :tool_orders 

    

end
