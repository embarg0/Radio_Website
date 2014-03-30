class Bands< ActiveRecord::Migration
  def change

  	create_table :bands, id: false do |t|
      t.primary_key :artistID
      t.string :name
      t.date :stateYear
      t.string :nationality

      

      t.timestamps
    end  
  
  end
end
