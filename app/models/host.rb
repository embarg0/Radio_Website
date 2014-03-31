class Host < ActiveRecord::Base
	has_and_belongs_to_many :shows

	validates :firstName, :lastName, :stageName, :dateOfBirth, :rating, 
				:contractStartDate, :salary, :presence => true;
	belongs_to :host_shows

	def query4m
		query = "Select \"firstName\", \"lastName\", salary from hosts where salary >= (select salary from hosts where \"stageName\" = 'Liam');"
        results = ActiveRecord::Base.connection.execute(query);
	end

	def query4n
		query = "SELECT * FROM hosts WHERE(hosts.id IN (1))"
        results = ActiveRecord::Base.connection.execute(query);
	end
end
