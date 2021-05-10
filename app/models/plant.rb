class Plant < ApplicationRecord 
    has_many :orders 
    has_many :users, through: :orders 
    has_many :tools, through: :orders 
    has_many :locations, through: :orders
end 