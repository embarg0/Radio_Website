class SongInventory < ActiveRecord::Base
		validates :title, :cancon, :instrumental, :presence => true;
		belongs_to :track, :class_name => 'Track', :foreign_key => 'track_id'


#Queries:
	def query4f
		query = "SELECT * FROM song_inventories WHERE(song_inventories.id IN (1))"
        results = ActiveRecord::Base.connection.execute(query);
	end
	
	def query4g()
		query = "SELECT * FROM song_inventories WHERE(song_inventories.id IN (1))"
        results = ActiveRecord::Base.connection.execute(query);
	end

	def query4h(band)
		query = "SELECT * FROM song_inventories WHERE(song_inventories.id IN (1))"
        results = ActiveRecord::Base.connection.execute(query);
	end

	def query4i()
		query = "SELECT * FROM song_inventories WHERE(song_inventories.id IN (1))"
        results = ActiveRecord::Base.connection.execute(query);
	end

	def query4j()
		query = "SELECT * FROM song_inventories WHERE(song_inventories.id IN (1))"
        results = ActiveRecord::Base.connection.execute(query);
	end
end
