class Tracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.string :title
      t.time :startTime
      t.time :endTime
      t.string :type
      t.belongs_to :play_sheet

      t.timestamps
    end
  end
end
