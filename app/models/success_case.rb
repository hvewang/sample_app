class SuccessCase < ActiveRecord::Base
	default_scope :order => 'success_cases.record_type'
	
	def force_utf
		#attributes.each {|key, value| value.force_encoding('utf-8') if value.encoding != 'utf-8' if value.kind_of?(String) }
	end
end
