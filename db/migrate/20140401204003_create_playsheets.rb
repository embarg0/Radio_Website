class CreatePlaysheets < ActiveRecord::Migration
  def change
    create_table :playsheets do |t|
      t.date :date
      t.string :day_of_week

      t.timestamps
    end
  end
end
