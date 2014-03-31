class Timeslot < ActiveRecord::Base

belongs_to :playsheet, foreign_key: "playsheet_id"
belongs_to :show, foreign_key: "show_id"


self.primary_key= :timeslots_id

	searchable do
		integer :timeslots_id
		integer :show_id, :references => Show
		integer :playsheet_id, :references => Playsheet
		time :start_time, :end_time	
	end

end
