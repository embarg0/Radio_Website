class SongInventory < ActiveRecord::Base
		validates :title, :cancon, :instrumental, :presence => true;
		belongs_to :track, :class_name => 'Track', :foreign_key => 'track_id'
end
