class User < ApplicationRecord
    has_many :plant_orders, through: :orders 
    has_many :tool_orders, through: :orders 
    has_many :orders
    has_many :locations
    has_many :locations, through: :orders 
    has_many :plants_orders, through: :orders 
    has_many :tools_orders, through: :orders
end
