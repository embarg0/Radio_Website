class Album < ActiveRecord::Base
<<<<<<< HEAD

has_many :songs, inverse_of: :album

self.primary_key= :album_id

 searchable do 
 	string :album_id
 	text :genre
 	text :label
 	text :recording_date
 end

 def recording_date
 	album_recording_date.try(:strftime, "%B %d, %Y")
 end

end
=======
	has_many :song_inventories
end
>>>>>>> FETCH_HEAD
