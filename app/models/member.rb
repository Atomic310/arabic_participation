class Member < ApplicationRecord
    # relations
    validates :uin, :first_name, :last_name, :email, :classification, :arabic_lvl, :payment_status, presence: true
    validates_uniqueness_of :uin, :email
    validates :uin, length: { is: 9 }
    
    # Class Methods
    # search_fn: searches by first name. Otherwise, just returns all members
    # def self.search_fn(fn_search)
    #     if fn_search
    #         fn = Member.find_by(first_name: search)
    #             if fn
    #                 self.where(member_id: member_uin)
    #             else
    #                 @members = Member.all
    #             end
    #     else
    #         @members = Member.all
    #     end
    # end
    
    # 
    # def self.update
    #     say_with_time "Updating members..." do
    #         Member.find(:all).each do |m|
    #             m.update_attribute :myattribute, 'Unpaid'
    #         end
    #     end
    # end

end
