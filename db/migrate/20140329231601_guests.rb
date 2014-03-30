class Guests < ActiveRecord::Migration
  def change
  	 create_table :guests, id: false do |t|
      t.primary_key :guestNum
      t.string :firstName
      t.string :lastName
      t.text :description
      t.text :topic
      t.integer :rating
      t.integer :timeSlotNum
      

      t.timestamps
    end  
  
  end
end
