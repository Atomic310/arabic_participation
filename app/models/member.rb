class Member < ApplicationRecord
    validates :uin, :first_name, :last_name, :email, :classification, :arabic_lvl, presence: true
end
