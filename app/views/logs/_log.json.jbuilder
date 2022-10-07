json.extract! log, :id, :log_id, :uin, :event_id, :created_at, :updated_at
json.url log_url(log, format: :json)
