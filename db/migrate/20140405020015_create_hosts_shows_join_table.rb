class CreateHostsShowsJoinTable < ActiveRecord::Migration
  def change
  	create_join_table :hosts, :shows do |t|

  	end

  	add_column :hosts_shows, :host_start_year, :integer
  	add_column  :hosts_shows, :host_start_month, :string

  end
end
