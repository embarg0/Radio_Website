class PlaySheets < ActiveRecord::Migration
  def change
  	 create_table :play_sheets, id: false do |t|
      t.primary_key :playSheetsNum
      t.date :date
      t.date :dayofweek
      

      t.timestamps
    end  
  
  end
end
