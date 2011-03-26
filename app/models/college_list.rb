# == Schema Information
# Schema version: 20110322035855
#
# Table name: college_lists
#
#  id                    :integer(4)      not null, primary key
#  name_en               :string(255)
#  name_cn               :string(255)
#  address               :string(255)
#  website               :string(255)
#  school_type           :string(255)
#  founded               :string(255)
#  total_student         :string(255)
#  enrollment            :string(255)
#  acceptance_rate       :string(255)
#  teacher_student_ratio :string(255)
#  student_info          :text
#  faculty_info          :text
#  sat_score             :string(255)
#  ranking               :text
#  tuition_fee           :text
#  financial_aid         :text
#  about_school          :text
#  academic_calendar     :string(255)
#  popular_major         :text
#  special_feature       :text
#  degree                :text
#  contact_info          :text
#  setting               :string(255)
#  pics                  :string(255)
#  application_deadline  :text
#  applciation_fee       :string(255)
#  application_method    :string(255)
#  application_form      :string(255)
#  application_material  :text
#  application_mustknow  :text
#  double_admission      :string(255)
#  lang_requirement      :text
#  d_lang_requirement    :text
#  recommendation_form   :string(255)
#  financial_form        :string(255)
#  admission_requirement :text
#  mail_test_score       :string(255)
#  airport_help          :string(255)
#  boardidng             :string(255)
#  notice                :text
#  remark                :text
#  status                :string(255)
#  created_at            :datetime
#  updated_at            :datetime
#

class CollegeList < ActiveRecord::Base
	validates :name_en, :presence => true, :uniqueness=> true 
	validates :name_cn, :presence => true, :uniqueness=> true
	
	def force_utf
		#attributes.each {|key, value| value.force_encoding('utf-8') if value.encoding != 'utf-8' if value.kind_of?(String) }
	end
end
