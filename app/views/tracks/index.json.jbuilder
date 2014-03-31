json.array!(@tracks) do |track|
  json.extract! track, :id, :title, :startTime, :endTime, :type, :songID
  json.url track_url(track, format: :json)
end
