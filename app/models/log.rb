class Log < ApplicationRecord
    belongs_to :member
    belongs_to :Event

    validates :log_id, :uin, :event_id, presence: true
end
