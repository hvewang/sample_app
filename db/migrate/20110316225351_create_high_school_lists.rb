class CreateHighSchoolLists < ActiveRecord::Migration
  def self.up
    create_table :high_school_lists do |t|
      t.string :name_en
      t.string :name_cn
      t.string :hs_type
      t.string :address
      t.string :state
      t.string :zip
      t.string :website
      t.text :about_en
      t.text :about_cn
      t.string :school_pics
      t.string :founded
      t.string :grade_en
      t.string :grade_cn
      t.string :student_type_en
      t.string :student_type_cn
      t.string :religion_en
      t.string :religion_cn
      t.string :total_student
      t.string :total_teacher
      t.string :teacher_student_ratio
      t.string :percentage_of_asia_student
      t.string :num_of_chinese_student
      t.string :num_of_ap_class
      t.string :num_of_honor_class
      t.string :esl_class
      t.string :school_bus
      t.string :winter_entry_en
      t.string :winter_entry_cn
      t.string :fall_entry_en
      t.string :fall_entry_cn
      t.string :airport_en
      t.string :airport_cn
      t.string :uniform
      t.string :interview
      t.string :required_test
      t.string :avg_sac_atc
      t.string :tuition
      t.string :other_fee_en
      t.string :other_fee_cn
      t.text :facility_en
      t.text :facility_cn
      t.text :top_university
      t.text :club_activity_en
      t.text :club_activity_cn
      t.string :city_nearby_en
      t.string :city_nearby_cn
      t.text :about_neary_city_en
      t.text :about_nearby_city_cn
      t.string :nearby_city_pics
      t.string :school_level
      t.text :remarks

      t.timestamps
    end
  end

  def self.down
    drop_table :high_school_lists
  end
end
