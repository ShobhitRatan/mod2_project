class User < ApplicationRecord
    has_many :orders 
    has_many :locations
    has_many :plants, through: :orders 
    has_many :tools, through: :orders 
    has_secure_password 
end
