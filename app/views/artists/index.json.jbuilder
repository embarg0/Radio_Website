json.array!(@artists) do |artist|
  json.extract! artist, :id, :firstName, :lastName, :stageName, :nationality, :date
  json.url artist_url(artist, format: :json)
end
