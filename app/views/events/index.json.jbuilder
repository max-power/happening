json.array!(@events) do |event|
  json.extract! event, :id, :name, :info, :open_at, :ends_at
  json.url event_url(event, format: :json)
end
