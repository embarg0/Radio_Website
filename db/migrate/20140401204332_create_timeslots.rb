class CreateTimeslots < ActiveRecord::Migration
  def change
    create_table :timeslots do |t|
      t.time :start_time
      t.time :end_time
      t.integer :show_number
      
      t.belongs_to :show
      t.belongs_to :playsheet

      t.timestamps
    end
  end
end
