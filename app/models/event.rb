class Event < ApplicationRecord
<<<<<<< HEAD
    has_many :log
    has_many: review

    validates :event_id, :date, :title, :description, :location, :price, :type, presence: true
=======
    has_many :members, through: :reviews 
    has_many :reviews
>>>>>>> main
end
