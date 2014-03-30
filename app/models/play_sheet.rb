class PlaySheet < ActiveRecord::Base
		validates :date, :dayofweek, :presence => true;
		belongs_to_many :time_slots
		belongs_to_many :tracks
