class Artist < ActiveRecord::Base
<<<<<<< HEAD

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

=======
	has_many :song_inventories
>>>>>>> FETCH_HEAD
end
