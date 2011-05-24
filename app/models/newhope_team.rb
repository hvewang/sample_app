class NewhopeTeam < ActiveRecord::Base
	has_attached_file :newhope_team_pic, 
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
