class Show < ActiveRecord::Base
<<<<<<< HEAD


has_many :playsheets, through: :timeslots
has_many :timeslots
has_many :hosts, through: :hosts_shows
has_many :hosts_shows 

self.primary_key= :show_id

searchable do
	text :show_name
	text :description
	text :category
	integer :show_id 
end

=======
	
	validates :showName, :category, :description, :presence => true;
	has_many :time_slots
	has_and_belongs_to_many :hosts
	belongs_to :host_shows
>>>>>>> FETCH_HEAD
end
