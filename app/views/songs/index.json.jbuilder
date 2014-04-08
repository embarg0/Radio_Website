json.array!(@songs) do |song|
  json.extract! song, :id, :title, :cancon, :instrumental
  json.url song_url(song, format: :json)
end
