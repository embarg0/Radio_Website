class Show < ActiveRecord::Base
	
	validates :showName, :category, :description, :presence => true;
	has_many :time_slots
	has_and_belongs_to_many :hosts
	belongs_to :host_shows

	def query4a(userChoice) # Add to the query!
		query = "SELECT * FROM hosts WHERE(hosts.id IN (1))"
        results = ActiveRecord::Base.connection.execute(query);
	end

	def query4b(category, date)# Add to the query!
		query = "SELECT * FROM hosts WHERE(hosts.id IN (1))"#Select * from tracks where play_sheet_id IN (Select play_sheet_id from play_sheets
															#where play_sheet_date = '2014-03-04');
        results = ActiveRecord::Base.connection.execute(query);
	end

	def query4c(category)
		query = "SELECT * FROM hosts WHERE(hosts.id IN (1))"
        results = ActiveRecord::Base.connection.execute(query);
	end

	def query4d(show)
		query = "SELECT * FROM hosts WHERE(hosts.id IN (1))"
        results = ActiveRecord::Base.connection.execute(query);
	end

	def query4e(category)
		query = "SELECT * FROM hosts WHERE(hosts.id IN (1))"
        results = ActiveRecord::Base.connection.execute(query);
	end
end
