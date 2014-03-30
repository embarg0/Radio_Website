json.array!(@guests) do |guest|
  json.extract! guest, :last_name, :description, :topic, :rating, :timeslot_number
  json.url guest_url(guest, format: :json)
end