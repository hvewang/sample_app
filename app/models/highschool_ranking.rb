class HighschoolRanking < ActiveRecord::Base
	validates :rank, :presence => true, :uniqueness=> true
	validates :name_en, :presence => true, :uniqueness=> true
	
	def force_utf
		if Rails.env.development? 
			attributes.each {|key, value| value.force_encoding('utf-8') if value.encoding != 'utf-8' if value.kind_of?(String) }
		end
	end
end
