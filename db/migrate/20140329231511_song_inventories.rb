class SongInventories < ActiveRecord::Migration
  def change
  	create_table :song_inventories do |t|
      t.string :title
      t.integer :cancon
      t.string :instrumental
      t.belongs_to :album
      t.belongs_to :artist
      t.belongs_to :band
      t.belongs_to :track

      t.timestamps
    end  
  
  end
end
