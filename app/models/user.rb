class User < ApplicationRecord
    has_many :orders
    has_many :locations, through: :orders 
<<<<<<< HEAD
    has_many :plants, through: :orders 
    has_many :tools, through: :orders 
    has_secure_password 
=======
    has_many :plant_orders, through: :orders 
    has_many :tool_orders, through: :orders 
>>>>>>> master
end
