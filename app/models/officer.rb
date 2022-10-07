class Officer < ApplicationRecord
    validates :uin, :position, :password, presence: true
end
