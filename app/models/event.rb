class Event < ApplicationRecord
    has_many :members, through: :reviews 
    has_many :reviews
end
