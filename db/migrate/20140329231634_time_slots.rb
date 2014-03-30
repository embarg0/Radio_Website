class TimeSlots < ActiveRecord::Migration
  def change

 create_table :time_slots, id: false do |t|
      t.primary_key :timeslotsNum
      t.time :startTime
      t.time :endTime
      t.integer :showNum
      t.integer :playsheetNum
      

      t.timestamps
    end  
  

  end
end
