class Order < ApplicationRecord
    belongs_to :user
    belongs_to :location 
    belongs_to :plant 
    belongs_to :tool

end
