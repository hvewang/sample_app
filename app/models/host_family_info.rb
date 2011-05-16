# == Schema Information
# Schema version: 20110322035855
#
# Table name: host_family_infos
#
#  id                  :integer(4)      not null, primary key
#  f_nm                :string(255)
#  l_nm                :string(255)
#  sex                 :string(255)
#  dob                 :date
#  street              :string(255)
#  city                :string(255)
#  state               :string(255)
#  zip                 :string(255)
#  homephone           :string(255)
#  cellphone           :string(255)
#  email               :string(255)
#  ethnicity           :string(255)
#  legal_status        :string(255)
#  education           :string(255)
#  religion            :string(255)
#  occupation          :string(255)
#  english_level       :string(255)
#  primary_language    :string(255)
#  second_language     :string(255)
#  homestay_experience :string(255)
#  student_sex         :string(255)
#  student_group       :string(255)
#  marrital_status     :string(255)
#  s_f_nm              :string(255)
#  s_l_nm              :string(255)
#  s_sex               :string(255)
#  s_dob               :date
#  s_ethnicity         :string(255)
#  s_legal_status      :string(255)
#  s_education         :string(255)
#  s_final_school      :string(255)
#  final_school        :string(255)
#  s_religion          :string(255)
#  s_occupation        :string(255)
#  s_english_level     :string(255)
#  s_primary_language  :string(255)
#  s_second_language   :string(255)
#  number_of_kids      :string(255)
#  kids_detail         :text
#  house_ownership     :string(255)
#  house_type          :string(255)
#  num_of_bedroom      :string(255)
#  num_of_bathroom     :string(255)
#  num_of_car          :string(255)
#  num_of_pet          :string(255)
#  pet_detail          :text
#  avail_room          :string(255)
#  ride_avail          :string(255)
#  comment             :text
#  way_to_know_nh      :string(255)
#  ind_confirm         :string(255)
#  created_at          :datetime
#  updated_at          :datetime
#  status              :string(255)
#  s_live_in           :string(255)
#

class HostFamilyInfo < ActiveRecord::Base
	attr_accessor :student_group1
	attr_accessor :student_group2
	attr_accessor :student_group3
	attr_accessor :student_group4
	
	before_save :format_student_group
	
	def self.activeHostFamily
		find_all
	end
	
	def force_utf
		if Rails.env.development? 
			attributes.each {|key, value| value.force_encoding('utf-8') if value.encoding != 'utf-8' if value.kind_of?(String) }
		end
	end
		
	private 
		def format_student_group
		  self.student_group = student_group1 << " " << student_group2 << " " << student_group3 << " " << student_group4
		end
end
