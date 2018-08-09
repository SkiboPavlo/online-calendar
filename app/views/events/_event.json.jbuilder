json.extract! event, :id, :calendar_id, :title, :date_range, :start, :end, :color, :created_at, :updated_at
json.url event_url(event, format: :json)
