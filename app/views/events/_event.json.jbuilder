json.extract! event, :id, :event_id, :date, :title, :description, :location, :price, :event_type, :created_at, :updated_at
json.url event_url(event, format: :json)
