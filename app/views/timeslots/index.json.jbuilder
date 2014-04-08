json.array!(@timeslots) do |timeslot|
  json.extract! timeslot, :id, :start_time, :end_time, :show_number
  json.url timeslot_url(timeslot, format: :json)
end
