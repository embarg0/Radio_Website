class Track < ActiveRecord::Base
	has_one :song
	has_many :play_sheets
end
