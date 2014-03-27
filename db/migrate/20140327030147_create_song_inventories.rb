class CreateSongInventories < ActiveRecord::Migration
  def change
    create_table :song_inventories do |t|
      t.integer :songID
      t.string :title
      t.integer :cancon
      t.integer :instrumental
      t.integer :artistiID
      t.integer :albumID

      t.timestamps
    end
  end
end
