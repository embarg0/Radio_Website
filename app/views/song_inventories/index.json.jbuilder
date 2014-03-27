json.array!(@song_inventories) do |song_inventory|
  json.extract! song_inventory, :id, :songID, :title, :cancon, :instrumental, :artistiID, :albumID
  json.url song_inventory_url(song_inventory, format: :json)
end
