class Hosts < ActiveRecord::Migration
  def change
  	 create_table :hosts do |t|
      t.string :firstName
      t.string :lastName
      t.string :stageName
      t.date :dateOfBirth
      t.integer :rating
      t.date :contractStartDate
      t.string :salary

      t.timestamps
    end  
  end
end
