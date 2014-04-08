class Guest < ActiveRecord::Base
	validates :first_name, :last_name, :description, :topic, :rating, 
		:presence => true;
end
