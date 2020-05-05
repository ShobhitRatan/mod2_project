class User < ApplicationRecord
    has_many :orders
    has_many :locations, through: :orders 
    has_many :plants, through: :orders 
    has_many :tools, through: :orders 
end
