class PlaySheet < ActiveRecord::Base
		validates :date, :dayofweek, :presence => true;
end
