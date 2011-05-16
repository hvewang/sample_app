class SuccessCase < ActiveRecord::Base
	default_scope :order => 'success_cases.record_type'
	default_scope :order => "record_type, school_type, student_name"
	
	def force_utf
		if Rails.env.development? 
			attributes.each {|key, value| value.force_encoding('utf-8') if value.encoding != 'utf-8' if value.kind_of?(String) }
		end
	end
end
