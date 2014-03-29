class RemoveIdsFromAllResources < ActiveRecord::Migration
  def self.up
  	remove_column :guests, :guestNum
  	remove_column :song_inventories, :songID
  	remove_column :play_sheets, :playSheetNum
  	remove_column :hosts, :employeeNum
  end
end
