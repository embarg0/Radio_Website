class Guest < ActiveRecord::Base

has_one :timeslot, inverse_of: :guest

attr_accessible :last_name, :description, :topic, :rating, :timeslots_id, :first_name, :guest_id

 searchable do 
 	text :last_name
 	text :description
 	text :topic
 	text :first_name 
 	integer :rating
 	integer :guest_id
 	integer :timeslots_id, :references => Timeslot
 end

self.primary_key= :guest_id

end
