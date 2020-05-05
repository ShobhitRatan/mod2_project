class User < ApplicationRecord
    has_many :plant_orders, through: :orders 
    has_many :tool_orders, through: :orders 
end
