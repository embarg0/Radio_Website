json.array!(@play_sheets) do |play_sheet|
  json.extract! play_sheet, :id, :playSheetsNum, :date, :dayofweek 
  json.url play_sheet_url(play_sheet, format: :json)
end
