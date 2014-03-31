json.array!(@shows) do |show|
  json.extract! show, :showNum, :showName, :category, :description
  json.url show_url(show, format: :json)
end
