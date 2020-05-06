class Plant < ApplicationRecord 
    has_many :orders
    has_many :plant_orders
    has_many :locations, through: :orders 
    has_many :tools_orders, through: :orders 
    has_many :users, through: :orders 
end 