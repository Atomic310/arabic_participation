class Event < ApplicationRecord
    has_many :reviews, dependent: :destroy_async
end
