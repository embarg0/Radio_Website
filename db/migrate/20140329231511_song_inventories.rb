class SongInventories < ActiveRecord::Migration
  def change
  	create_table :song_inventories, id: false do |t|
      t.primary_key :songID
      t.string :title
      t.integer :cancon
      t.string :instrumental
      t.integer :artistID
      t.integer :albumID

      

      t.timestamps
    end  
  
  end
end
