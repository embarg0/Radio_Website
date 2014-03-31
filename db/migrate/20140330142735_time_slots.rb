class TimeSlots < ActiveRecord::Migration
  def change
    create_table :time_slots do |t|
      t.time :startTime
      t.time :endTime
      t.belongs_to :show
      t.belongs_to :play_sheet

      t.timestamps
    end
  end
end
