class Album < ActiveRecord::Base

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
