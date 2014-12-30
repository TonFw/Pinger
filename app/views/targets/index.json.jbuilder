json.array!(@targets) do |target|
  json.extract! target, :id, :url, :user_id
  json.url target_url(target, format: :json)
end
