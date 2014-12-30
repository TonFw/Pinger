json.array!(@pings) do |ping|
  json.extract! ping, :id, :http_code, :scheduled_id, :target_id
  json.url ping_url(ping, format: :json)
end
