class Playsheet < ActiveRecord::Base
	validates :date, :day_of_week, :presence => true;
	has_many :timeslots
	has_many :tracks
end
