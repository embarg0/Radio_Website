json.array!(@albums) do |album|
  json.extract! album, :id, :type, :label, :album_recording_date
  json.url album_url(album, format: :json)
end
