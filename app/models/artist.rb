class Artist < ActiveRecord::Base

has_many :songs, inverse_of: :artist

self.primary_key= :artist_id

 searchable do 
 	string :artist_id 
 	text :first_name
 	text :last_name
 	string :stage_name
 	string :nationality
 	date :date_of_birth
 end

end
