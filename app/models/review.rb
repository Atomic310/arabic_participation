class Review < ApplicationRecord
    belongs_to :event
    validates :uin, length: { is: 9 }
end
