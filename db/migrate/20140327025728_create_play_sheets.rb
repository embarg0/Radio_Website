class CreatePlaySheets < ActiveRecord::Migration
  def change
    create_table :play_sheets do |t|
      t.integer :playSheetNum
      t.date :date
      t.string :dateOfWeek

      t.timestamps
    end
  end
end
