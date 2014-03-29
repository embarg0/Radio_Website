json.array!(@hosts) do |host|
  json.extract! host, :id, :firstName, :lastName, :stageName, :dateOfBirth, :rating, :contractStartDate, :salary
  json.url host_url(host, format: :json)
end
