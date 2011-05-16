class Location < ActiveRecord::Base
	acts_as_gmappable
	def gmaps4rails_address
		address
	end
	
	def gmaps4rails_infowindow
		"<h4>#{name}</h4>" << "<h4>#{address}</h4>"
	end
	
	def force_utf
		if Rails.env.development? 
			attributes.each {|key, value| value.force_encoding('utf-8') if value.encoding != 'utf-8' if value.kind_of?(String) }
		end
	end
end
