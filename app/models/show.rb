class Show < ActiveRecord::Base
	has_and_belongs_to_many :hosts
		validates :showName, :category, :description, :presence => true;
end
