class Song < ActiveRecord::Base

has_one :artist, inverse_of: :song
belongs_to :track, inverse_of: :song
has_one :band, inverse_of: :song
has_one :album, inverse_of: :song

 searchable do 
	text :title
	boolean :cancon, :instrumental
	string :album_id, :references => Album
	string :artist_id, :references => Artist
	string :song_id
	string :band_id, :references => Band
 end

attr_accessible :title, :cancon, :instrumental, :album_id, :artist_id, :song_id, :band_id
self.primary_key= :song_id

	
end
