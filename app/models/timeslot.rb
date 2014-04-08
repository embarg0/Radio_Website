class Timeslot < ActiveRecord::Base
	validates :start_time, :end_time, :show_number, :presence => true;
	has_many :guests
end
