class Host < ActiveRecord::Base
	validates :first_name, :last_name, :stage_name, :date_of_birth, :rating, 
		:contract_start_date, :contract_end_date, :salary, :presence => true;
	has_and_belongs_to_many :shows
end
