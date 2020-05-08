class Order < ApplicationRecord
    belongs_to :user
    belongs_to :location 
    belongs_to :plant 
    belongs_to :tool

    def price 
        self.price = self.plant.price + self.tool.price
    end 

    def weight 
        self.weight = self.plant.weight + self.tool.weight
    end
end
