class PlantOrder < ApplicationRecord
    belongs_to :plant 
    belongs_to :order 

    def self.line_total 
        self.line_total = self.plants.price * self.weight 
    end 
end
