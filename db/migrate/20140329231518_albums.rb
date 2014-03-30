class Albums < ActiveRecord::Migration
  def change
  	create_table :albums, id: false do |t|
      t.primary_key :albumID
      t.string :type
      t.string :label
      t.date :albumRecordingDate

      

      t.timestamps
    end  
  
  end
end
