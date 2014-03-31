class Track < ActiveRecord::Base

has_one :song, inverse_of: :track
has_one :playsheet, inverse_of: :track

self.primary_key= :track_id

	searchable do 
		string :track_id
		string :song_id, :references => Song
		integer :playsheet_id, :references => Playsheet
		text :title
		text :genre
		time :start_time
		time :end_time
	end
	
end
