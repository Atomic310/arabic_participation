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
    #         fn = Member.find_by(first_name: search)
    #             if fn
    #                 self.where(member_id: member_payment_status)
    #             else
    #                 @members = Member.all
    #             end
    #     else
    #         @members = Member.all
    #     end
    # end
    
    # filter_paid: returns all memebers who have paid dues
    def filter_paid
        @results = Member.all.where(payment_status: "Paid")
    end

    # filter_unpaid: returns all memebers who have not paid dues
    def filter_unpaid
        @results = Member.all.where(payment_status: "Unpaid")
    end
end
