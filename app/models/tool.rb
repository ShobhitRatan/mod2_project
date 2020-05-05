class Tool < ApplicationRecord
    has_many :orders
    has_many :locations, through: :orders 
    has_many :plants, through: :orders 
    has_many :users, through: :orders 
end