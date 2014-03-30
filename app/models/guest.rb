class Guest < ActiveRecord::Base
		validates :firstName, :lastName, :description, :topic, :rating, 
				:presence => true;
end
