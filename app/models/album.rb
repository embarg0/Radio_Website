class Album < ActiveRecord::Base
    validates :type, :label, :album_recording_date, :presence => true;
	has_many :songs
end
