json.array!(@shows) do |show|
  json.extract! show, :id, :name, :host, :description
  json.url show_url(show, format: :json)
end
