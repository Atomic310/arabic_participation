class Officer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    validates :uin, :position, :password, presence: true
    validates_uniqueness_of :uin
    validates :uin, length: { is: 9 }
end
