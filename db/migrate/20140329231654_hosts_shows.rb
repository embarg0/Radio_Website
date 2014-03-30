class HostsShows < ActiveRecord::Migration
  def change

  	 create_table :hosts_shows do |t|
      t.string :employeeNum
      t.integer :showNum
      t.date :hostStartYear
      t.date :hostStartMonth
      

      t.timestamps
    end  
  
  end

end
