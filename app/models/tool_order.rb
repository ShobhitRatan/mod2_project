class ToolOrder < ApplicationRecord
    belongs_to :tool 
    belongs_to :order 

    def self.line_total 
        self.line_total = self.tools.price * self.weight 
    end 
end
