class Member < ApplicationRecord
    validates :uin, :first_name, :last_name, :email, :classification, :arabic_lvl, :payment_status, presence: true
end
