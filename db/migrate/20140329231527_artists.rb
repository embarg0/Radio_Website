class Artists < ActiveRecord::Migration
  def change
  	create_table :artists, id: false do |t|
      t.primary_key :artistID
      t.string :firstName
      t.string :lastName
      t.string :stageName
      t.string :nationality
      t.date :date


      t.timestamps
    end  
  
  end
end
