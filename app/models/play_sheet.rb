class PlaySheet < ActiveRecord::Base
		validates :date, :dayofweek, :presence => true;
		has_many :time_slots
		has_many :tracks
