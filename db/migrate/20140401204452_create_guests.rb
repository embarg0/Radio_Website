class CreateGuests < ActiveRecord::Migration
  def change
    create_table :guests do |t|
      t.string :first_name
      t.string :last_name
      t.text :description
      t.text :topic
      t.integer :rating

      t.belongs_to :timeslot

      t.timestamps
    end
  end
end
