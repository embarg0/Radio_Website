class Bands < ActiveRecord::Migration
  def change
    create_table :bands do |t|
      t.string :name
      t.integer :startYear
      t.string :nationality

      t.timestamps
    end
  end
end
