class CreateHostShowsJoinTable < ActiveRecord::Migration
  def change
    create_join_table :shows, :hosts do |t|
      # t.index [:user_id, :role_id]
      # t.index [:role_id, :user_id]
    end
  end

  def self.down
	drop_table :shows_hosts
	end
end
