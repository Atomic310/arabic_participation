json.extract! member, :id, :uin, :first_name, :last_name, :classification, :major, :email, :created_at, :updated_at
json.url member_url(member, format: :json)
