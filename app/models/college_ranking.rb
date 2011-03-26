class CollegeRanking < ActiveRecord::Base
	validates :name_en, :presence => true, :uniqueness=> true 
	validates :name_cn, :presence => true, :uniqueness=> true
	validates :rank, :presence => true
	validates_uniqueness_of :rank, :scope => [:name_en]
	
	def force_utf
		#attributes.each {|key, value| value.force_encoding('utf-8') if value.encoding != 'utf-8' if value.kind_of?(String) }
	end
end
