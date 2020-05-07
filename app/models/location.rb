class Location < ApplicationRecord 
    has_many :orders 
    has_many :users, through: :orders 
    has_many :plants_orders, through: :orders 
    has_many :tools_orders, through: :orders 
    belongs_to :user 
end 