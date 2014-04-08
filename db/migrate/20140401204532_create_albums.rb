class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :type
      t.string :label
      t.date :album_recording_date

      t.timestamps
    end
  end
end
