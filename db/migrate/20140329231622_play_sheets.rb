class PlaySheets < ActiveRecord::Migration
  def change
  	 create_table :play_sheets do |t|
      t.date :date
      t.date :dayofweek
      

      t.timestamps
    end  
  
  end
end
