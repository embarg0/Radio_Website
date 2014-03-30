class Host < ActiveRecord::Base

has_many :shows, through: :hosts_shows
has_many :hosts_shows
has_many :timeslots, through: :shows
has_many :guests, through: :timeslots

self.primary_key = :host_id

 searchable do 
 	text :shows do
 			shows.map(&:category) end
 	integer :guests do
 			shows.map(&:rating) end
 	text :first_name
 	text :last_name
 	text :stage_name
 	integer :host_id
 	integer :rating
 	date :date_of_birth
 	date :contract_start_date
 	date :date_last_hosted
 	float :salary
	end
end
