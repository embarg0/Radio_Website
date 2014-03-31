class Show < ActiveRecord::Base
	
	validates :showName, :category, :description, :presence => true;
	has_many :time_slots
	has_and_belongs_to_many :hosts
	belongs_to :host_shows
end
