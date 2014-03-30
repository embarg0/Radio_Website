class Tracks < ActiveRecord::Migration
  def change
  	 create_table :tracks, id: false do |t|
      t.primary_key :trackID
      t.string :title
      t.time :startTime
      t.time :endTime
      t.string :type
      t.integer :songID

      

      t.timestamps
    end  
  
  end
end
