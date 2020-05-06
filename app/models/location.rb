class Location < ApplicationRecord 
    has_many :orders 
<<<<<<< HEAD
    has_many :plants, through: :orders 
    has_many :tools, through: :orders 
    has_many :users, through: :orders 
=======
    has_many :plants_orders, through: :orders 
    has_many :tools_orders, through: :orders 
    belongs_to :user
>>>>>>> e740a172adfbfb54184b27d8354c19651a1f89d4
end 