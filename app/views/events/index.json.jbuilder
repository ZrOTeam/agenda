json.array!(@events) do |event|
  json.extract! event, :id, :contact_id, :event_date, :name, :comments, :remember
  json.url event_url(event, format: :json)
end
