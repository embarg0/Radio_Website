class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.string :title
      t.time :start_time
      t.time :end_time
      t.string :type
      
      t.belongs_to :playsheet
      t.belongs_to :song

      t.timestamps
    end
  end
end
