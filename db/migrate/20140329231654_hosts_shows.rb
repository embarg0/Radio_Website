class HostsShows < ActiveRecord::Migration
  def change

  	 create_table :hosts_shows, id: false do |t|
      t.primary_key :contractNum
      t.string :employeeNum
      t.integer :showNum
      t.date :hostStartYear
      t.date :hostStartMonth
      

      t.timestamps
    end  
  
  end

end
