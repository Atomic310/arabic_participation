json.extract! member, :id, :uin, :first_name, :last_name, :email, :classification, :arabic_lvl, :payment_status, :created_at, :updated_at
json.url member_url(member, format: :json)
