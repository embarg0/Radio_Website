class Song < ActiveRecord::Base
	validates :title, :cancon, :instrumental, :presence => true;
	has_one :track
end
