class Host < ActiveRecord::Base
	has_and_belongs_to_many :shows

	validates :firstName, :lastName, :stageName, :dateOfBirth, :rating, 
				:contractStartDate, :salary, :presence => true;
end
