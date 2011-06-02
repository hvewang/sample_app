class HostFamilyPhoto < ActiveRecord::Base
	validates :host_family_info_id, :presence => true
	
	belongs_to :host_family_info
	
	default_scope :order => 'host_family_photos.created_at DESC'
	
	has_attached_file :host_family_pic, 
		:styles => { :medium => "320x240>", :thumb => "160x120>", :large => "640x480>" },
		:storage => :s3,
		:s3_credentials => "#{RAILS_ROOT}/config/s3.yml",
		:path => ":attachment/:id/:style.:extension",
		:bucket => 'NewHope-Prod'
	
	def force_utf
		if Rails.env.development? 
			attributes.each {|key, value| value.force_encoding('utf-8') if value.encoding != 'utf-8' if value.kind_of?(String) }
		end
	end
end
