json.array!(@scheduleds) do |scheduled|
  json.extract! scheduled, :id, :hour, :target_id
  json.url scheduled_url(scheduled, format: :json)
end
