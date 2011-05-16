class GraduateSchoolRanking < ActiveRecord::Base
	validates :name_en, :presence => true 
	validates :name_cn, :presence => true 
	validates :rank, :presence => true
	validates :category, :presence => true
	validates_uniqueness_of :rank, :scope => [:name_en, :category]
	default_scope :order => "category, rank"
	
	def force_utf
		if Rails.env.development? 
			attributes.each {|key, value| value.force_encoding('utf-8') if value.encoding != 'utf-8' if value.kind_of?(String) }
		end
	end
end
