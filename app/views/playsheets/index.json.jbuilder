json.array!(@playsheets) do |playsheet|
  json.extract! playsheet, :id, :date, :day_of_week
  json.url playsheet_url(playsheet, format: :json)
end
