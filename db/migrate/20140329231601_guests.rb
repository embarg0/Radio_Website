class Guests < ActiveRecord::Migration
  def change
  	 create_table :guests do |t|
      t.string :firstName
      t.string :lastName
      t.text :description
      t.text :topic
      t.integer :rating
      t.belongs_to :time_slot

      t.timestamps
    end  
  
  end
end
