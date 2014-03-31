class Artists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :firstName
      t.string :lastName
      t.string :stageName
      t.string :nationality
      t.date :date

      t.timestamps
    end
  end
end
