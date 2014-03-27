class CreateGuests < ActiveRecord::Migration
  def change
    create_table :guests do |t|
      t.integer :guestNum
      t.string :firstName
      t.string :lastName
      t.text :description
      t.text :topic
      t.integer :rating
      t.integer :timeslotNum

      t.timestamps
    end
  end
end
