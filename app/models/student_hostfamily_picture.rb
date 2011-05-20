class StudentHostfamilyPicture < ActiveRecord::Base
	validates :location, :presence => true
	validates :pic_file_name, :presence => true
	
	has_attached_file :pic, 
		:styles => { :medium => "350x300>", :thumb => "150x100>", :large => "600x400" },
		:storage => :s3,
		:s3_credentials => "#{RAILS_ROOT}/config/s3.yml",
		:path => ":attachment/:id/:style.:extension",
		:bucket => 'NewHope-Devl'
		
	def force_utf
		if Rails.env.development? 
			attributes.each {|key, value| value.force_encoding('utf-8') if value.encoding != 'utf-8' if value.kind_of?(String) }
		end
	end
end
