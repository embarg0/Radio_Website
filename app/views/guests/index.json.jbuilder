json.array!(@guests) do |guest|
  json.extract! guest, :id, :guestNum, :firstName, :lastName, :description, :topic, :rating, :timeSlotNum
  json.url guest_url(guest, format: :json)
end
