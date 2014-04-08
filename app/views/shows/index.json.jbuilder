json.array!(@shows) do |show|
  json.extract! show, :id, :show_name, :description, :category
  json.url show_url(show, format: :json)
end
