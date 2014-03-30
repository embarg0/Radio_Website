class TimeSlot < ActiveRecord::Base
	has_many :play_sheets
	has_many :shows
end
