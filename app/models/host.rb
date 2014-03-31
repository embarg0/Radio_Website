class Host < ActiveRecord::Base

<<<<<<< HEAD
has_many :shows, through: :hosts_shows
has_many :hosts_shows
self.primary_key = :host_id

 searchable do 
 	text :shows do
 			shows.map(&:category) end
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
=======
	validates :firstName, :lastName, :stageName, :dateOfBirth, :rating, 
				:contractStartDate, :salary, :presence => true;
	belongs_to :host_shows
>>>>>>> FETCH_HEAD
end
