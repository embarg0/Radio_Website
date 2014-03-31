class HostsShow < ActiveRecord::Base

attr_accessible :host_id, :show_id, :host_start_date, :contract_number


belongs_to :show
belongs_to :host

 searchable do 
 	integer :host_id
 	integer :show_id, :references => Show
 	integer :contract_number
 	date  :host_start_date
end


self.primary_key= :contract_number

end
