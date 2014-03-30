class Playsheet < ActiveRecord::Base

self.primary_key= :playsheet_id

has_many :shows, through: :timeslots 
has_many :timeslots
has_many :tracks, inverse_of: :playsheet


 searchable do
 	text :shows do
 			shows.map(&:show_name) end
 	text :play_date
 	string :play_date
 	date :day_of_week
 	date :playsheet_date
 	integer  :playsheet_id
 end

#def show_name
#	var = Array.new
#	i = 0
#	count = Playsheet.count
#		@playsheet = Playsheet.all
#		count.times do |i|
#			var.push << @playsheet[i].shows.pluck(:show_name)
#		end
#	return var
#end

def play_date 
	playsheet_date.try(:strftime, "%B %d, %Y")
end

end