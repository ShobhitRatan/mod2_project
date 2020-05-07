class Tool < ApplicationRecord
    has_many :orders
    has_many :tool_orders, through: :orders
    has_many :locations, through: :orders 
    has_many :plants_orders, through: :orders 
    has_many :users, through: :orders 
end