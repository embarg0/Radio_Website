json.array!(@artists) do |artist|
  json.extract! artist, :id, :first_name, :last_name, :stage_name, :nationality, :band_name, :date_of_birth
  json.url artist_url(artist, format: :json)
end
