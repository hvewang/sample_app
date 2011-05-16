# == Schema Information
# Schema version: 20110313020325
#
# Table name: service_grades
#
#  id         :integer(4)      not null, primary key
#  grade      :string(255)
#  en_label   :string(255)
#  cn_label   :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class ServiceGrade < ActiveRecord::Base
	validates :grade, :presence => true, :uniqueness => true
	
	def force_utf
		if Rails.env.development? 
			attributes.each {|key, value| value.force_encoding('utf-8') if value.encoding != 'utf-8' if value.kind_of?(String) }
		end
	end
end
