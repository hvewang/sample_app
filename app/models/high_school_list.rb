class HighSchoolList < ActiveRecord::Base
	validates :name_en, :presence => true, :uniqueness=> true 
	
	def force_utf
		#attributes.each {|key, value| value.force_encoding('utf-8') if value.encoding != 'utf-8' if value.kind_of?(String) }
	end
end
