class Officer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    validates :uin, :position, :password, presence: true
    has_many :events, through: :reviews
    has_many :reviews, dependent: :destroy_async
end
