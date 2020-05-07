class Order < ApplicationRecord
    belongs_to :user
    belongs_to :location 
    belongs_to :plant 
    belongs_to :tool

    def self.price 
        self.plant.price + self.tool.price 
    end 
end
