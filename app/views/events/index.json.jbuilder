json.array!(@events) do |event|
  json.extract! event, :id, :workers, :name, :address, :date
  json.url event_url(event, format: :json)
end
