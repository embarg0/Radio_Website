class Track < ActiveRecord::Base
	validates :title, :start_time, :end_time, :type, :presence => true;

end
