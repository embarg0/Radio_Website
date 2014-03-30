class Bands < ActiveRecord::Migration
  def change
    create_table :bands do |t|
      t.string :name
      t.date :stateYear
      t.string :nationality

      t.timestamps
    end
  end
end
