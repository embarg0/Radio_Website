class Albums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :type
      t.string :label
      t.date :albumRecordingDate

      t.timestamps
    end
  end
end
