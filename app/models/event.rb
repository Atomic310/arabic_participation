class Event < ApplicationRecord
    has_many :log
    has_many: review

    validates :event_id, :date, :title, :description, :location, :price, :type, presence: true
end
