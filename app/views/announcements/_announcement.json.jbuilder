json.extract! announcement, :id, :uin, :event_id, :comment, :rating, :created_at, :updated_at
json.url announcement_url(announcement, format: :json)
