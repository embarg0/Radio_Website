json.array!(@tracks) do |track|
  json.extract! track, :id, :title, :start_time, :end_time, :type
  json.url track_url(track, format: :json)
end
