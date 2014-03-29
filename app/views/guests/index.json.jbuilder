json.array!(@guests) do |guest|
  json.extract! guest, :id, :firstName, :lastName, :description, :topic, :rating, :timeslotNum
  json.url guest_url(guest, format: :json)
end
