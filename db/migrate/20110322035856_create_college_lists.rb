class CreateCollegeLists < ActiveRecord::Migration
  def self.up
    create_table :college_lists do |t|
      t.string :name_en
      t.string :name_cn
      t.string :address
      t.string :website
      t.string :school_type
      t.string :founded
      t.string :total_student
      t.string :enrollment
      t.string :acceptance_rate
      t.string :teacher_student_ratio
      t.text :student_info
	  t.text :faculty_info
      t.string :sat_score
      t.text :ranking
      t.text :tuition_fee
      t.text :financial_aid
      t.text :about_school
      t.string :academic_calendar
      t.text :popular_major
      t.text :special_feature
      t.text :degree
      t.text :contact_info
      t.string :setting
      t.string :pics
      t.text :application_deadline
      t.string :application_fee
      t.string :application_method
      t.string :application_form
      t.text :application_material
      t.text :application_mustknow
      t.string :double_admission
      t.text :lang_requirement
      t.text :d_lang_requirement
      t.string :recommendation_form
      t.string :financial_form
      t.text :admission_requirement
      t.string :mail_test_score
      t.string :airport_help
      t.string :boarding
      t.text :notice
      t.text :remark
      t.string :status

      t.timestamps
    end
  end

  def self.down
    drop_table :college_lists
  end
end
