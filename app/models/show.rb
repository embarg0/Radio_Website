class Show < ActiveRecord::Base


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

end
