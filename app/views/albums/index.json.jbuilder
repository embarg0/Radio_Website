json.array!(@albums) do |album|
  json.extract! album, :id, :type, :label, :albumRecordingDate
  json.url album_url(album, format: :json)
end
