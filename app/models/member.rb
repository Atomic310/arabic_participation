class Member < ApplicationRecord
    # relations
    has_many :events, through: :reviews
    has_many :reviews
    validates :uin, :first_name, :last_name, :email, :classification, :arabic_lvl, :payment_status, presence: true
    validates_uniqueness_of :uin, :email
    validates :uin, length: { is: 9 }
    
    # Class Methods
    # search_fn: searches by first name. Otherwise, just returns all members
    # def self.search_fn(fn_search)
    #     if fn_search
    #         fn = Sushi.find_by(first_name: search)
    #             if fn
    #                 self.where(sushi_id: sushi_type)
    #             else
    #                 @members = Member.all
    #             end
    #     else
    #         @members = Member.all
    #     end
    # end
    
end
