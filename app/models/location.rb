class Location < ApplicationRecord 
    has_many :orders 
    has_many :plants, through: :orders 
    has_many :tools, through: :orders 
    has_many :users, through: :orders 
end 