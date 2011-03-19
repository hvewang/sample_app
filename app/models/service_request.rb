# == Schema Information
# Schema version: 20110313020325
#
# Table name: service_requests
#
#  id             :integer(4)      not null, primary key
#  student_name   :string(255)
#  year_of_birth  :string(255)
#  gender         :string(255)
#  parent_name    :string(255)
#  relationship   :string(255)
#  street         :string(255)
#  city           :string(255)
#  country        :string(255)
#  nationality    :string(255)
#  cell_phone     :string(255)
#  home_phone     :string(255)
#  email          :string(255)
#  service_grade  :string(255)
#  service_type   :string(255)
#  service_city   :string(255)
#  service_state  :string(255)
#  service_detail :text
#  way_to_know_nh :string(255)
#  comments       :text
#  status         :string(255)
#  updated_by     :integer(4)
#  created_at     :datetime
#  updated_at     :datetime
#

class ServiceRequest < ActiveRecord::Base
	validates :student_name, :presence => true 
	
	def force_utf
		attributes.each {|key, value| value.force_encoding('utf-8') if value.encoding != 'utf-8' if value.kind_of?(String) }
	end
end
