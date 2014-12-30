json.array!(@schedules) do |schedule|
  json.extract! schedule, :id, :hour, :target_id
  json.url schedule_url(schedule, format: :json)
end
