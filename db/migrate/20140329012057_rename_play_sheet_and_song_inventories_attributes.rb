class RenamePlaySheetAndSongInventoriesAttributes < ActiveRecord::Migration
  def self.up
  	rename_column :play_sheets, :dateOfWeek, :dayOfWeek
  	rename_column :song_inventories, :artistiID, :artistID
  end
  def self.down
  end
end
