class ToolOrder < ApplicationRecord
    belongs_to :tool 
    belongs_to :order 
end
