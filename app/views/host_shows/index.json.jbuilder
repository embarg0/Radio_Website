json.array!(@host_shows) do |host_show|
  json.extract! host_show, :id, :hostStartYear, :hostStartMonth
  json.url host_show_url(host_show, format: :json)
end
