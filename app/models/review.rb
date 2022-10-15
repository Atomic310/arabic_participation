class Review < ApplicationRecord
    belongs_to :officer
    belongs_to :event

    validates :uin, :event_id, :comment, :rating, presence: true
end
