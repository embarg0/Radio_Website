class PlaySheet < ActiveRecord::Base
		validates :date, :dayofweek, :presence => true;
		has_many :time_slots
		has_many :tracks

	def query1
		query = "SELECT * FROM hosts WHERE(hosts.id IN (2))"
        results = ActiveRecord::Base.connection.execute(query);
    end

end