class Artist < ActiveRecord::Base
	has_many :song_inventories
end