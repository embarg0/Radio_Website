json.array!(@guests) do |guest|
<<<<<<< HEAD
  json.extract! guest, :id, :guestNum, :firstName, :lastName, :description, :topic, :rating, :timeSlotNum
=======
  json.extract! guest, :id, :firstName, :lastName, :description, :topic, :rating, :timeslotNum
>>>>>>> 2b28c03175d830aa1c3103873b39917a7a34f295
  json.url guest_url(guest, format: :json)
end
