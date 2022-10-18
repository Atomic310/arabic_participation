class Member < ApplicationRecord
    has_one :officer
    has_many :log
    has_many :events, through: :reviews
    has_many :reviews 
    
    validates :uin, :first_name, :last_name, :email, :classification, :arabic_lvl, :payment_status, presence: true
end
