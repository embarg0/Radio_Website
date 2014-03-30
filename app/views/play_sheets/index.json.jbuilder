json.array!(@play_sheets) do |play_sheet|
<<<<<<< HEAD
  json.extract! play_sheet, :id, :playSheetsNum, :date, :dayofweek 
=======
  json.extract! play_sheet, :id, :date, :dayOfWeek
>>>>>>> 2b28c03175d830aa1c3103873b39917a7a34f295
  json.url play_sheet_url(play_sheet, format: :json)
end
