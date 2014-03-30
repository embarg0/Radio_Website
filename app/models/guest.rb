class Guest < ActiveRecord::Base
		validates :firstName, :lastName, :description, :topic, :rating, 
				:presence => true;
		has_many :time_slots
end
