# == Schema Information
# Schema version: 20110322035855
#
# Table name: high_school_lists
#
#  id                         :integer(4)      not null, primary key
#  name_en                    :string(255)
#  name_cn                    :string(255)
#  hs_type                    :string(255)
#  address                    :string(255)
#  state                      :string(255)
#  zip                        :string(255)
#  website                    :string(255)
#  about_en                   :text
#  about_cn                   :text
#  school_pics                :string(255)
#  founded                    :string(255)
#  grade_en                   :string(255)
#  grade_cn                   :string(255)
#  student_type_en            :string(255)
#  student_type_cn            :string(255)
#  religion_en                :string(255)
#  religion_cn                :string(255)
#  total_student              :string(255)
#  total_teacher              :string(255)
#  teacher_student_ratio      :string(255)
#  percentage_of_asia_student :string(255)
#  num_of_chinese_student     :string(255)
#  num_of_ap_class            :string(255)
#  num_of_honor_class         :string(255)
#  esl_class                  :string(255)
#  school_bus                 :string(255)
#  winter_entry_en            :string(255)
#  winter_entry_cn            :string(255)
#  fall_entry_en              :string(255)
#  fall_entry_cn              :string(255)
#  airport_en                 :string(255)
#  airport_cn                 :string(255)
#  uniform                    :string(255)
#  interview                  :string(255)
#  required_test              :string(255)
#  avg_sac_atc                :string(255)
#  tuition                    :string(255)
#  other_fee_en               :string(255)
#  other_fee_cn               :string(255)
#  facility_en                :text
#  facility_cn                :text
#  top_university             :text
#  club_activity_en           :text
#  club_activity_cn           :text
#  city_nearby_en             :string(255)
#  city_nearby_cn             :string(255)
#  about_neary_city_en        :text
#  about_nearby_city_cn       :text
#  nearby_city_pics           :string(255)
#  school_level               :string(255)
#  remarks                    :text
#  created_at                 :datetime
#  updated_at                 :datetime
#  contact                    :string(255)
#

class HighSchoolList < ActiveRecord::Base
	validates :name_en, :presence => true, :uniqueness=> true
	
	default_scope :order => "updated_at desc"
	
	has_attached_file :high_school_pic, 
		:styles => { :medium => "320x240>", :thumb => "160x120>", :large => "640x480>" },
		:storage => :s3,
		:s3_credentials => "#{RAILS_ROOT}/config/s3.yml",
		:path => ":attachment/:id/:style.:extension",
		:bucket => 'NewHope-Prod'
	
	has_attached_file :high_school_city_pic, 
		:styles => { :medium => "320x240>", :thumb => "160x120>", :large => "640x480>" },
		:storage => :s3,
		:s3_credentials => "#{RAILS_ROOT}/config/s3.yml",
		:path => ":attachment/:id/:style.:extension",
		:bucket => 'NewHope-Prod'
	
	has_attached_file :high_school_pdf,
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
