json.extract! review, :id, :uin, :event_id, :comment, :rating, :created_at, :updated_at
json.url review_url(review, format: :json)
