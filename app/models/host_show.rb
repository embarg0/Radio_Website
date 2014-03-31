class HostShow < ActiveRecord::Base
	has_one :host
	has_one :show
end
