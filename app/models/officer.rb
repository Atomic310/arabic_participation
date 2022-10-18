class Officer < ApplicationRecord
    belongs_to :member
    has_many :review

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    validates :uin, :position, :password, presence: true
end
