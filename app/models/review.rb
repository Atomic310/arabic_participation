class Review < ApplicationRecord
    belongs_to :officer 
    belongs_to :event
end
