class Order < ApplicationRecord
    belongs_to :user
    belongs_to :location 
    belongs_to :plant 
    belongs_to :tool

    def price 
        @order = Order.find(id: self.id)
        self.price = self.plant.price + self.tool.price
    end 

    def weight 
        @order = Order.find(id: self.id)
        self.weight = self.plant.weight + self.tool.weight
    end
end
