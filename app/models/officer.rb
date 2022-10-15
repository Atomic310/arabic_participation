class Officer < ApplicationRecord
    belongs_to :member
    has_many :review

    validates :uin, :position, :password, presence: true
end
