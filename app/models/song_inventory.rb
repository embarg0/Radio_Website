class SongInventory < ActiveRecord::Base
		validates :title, :cancon, :instrumental, :presence => true;
end
