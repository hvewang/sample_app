class CreateHostFamilyInfos < ActiveRecord::Migration
  def self.up
    create_table :host_family_infos do |t|
      t.string :f_nm
      t.string :l_nm
      t.string :sex
      t.date :dob
      t.string :street
      t.string :city
      t.string :state
      t.string :zip
      t.string :homephone
      t.string :cellphone
      t.string :email
      t.string :ethnicity
      t.string :legal_status
      t.string :education
      t.string :religion
      t.string :occupation
      t.string :english_level
      t.string :primary_language
      t.string :second_language
      t.string :homestay_experience
      t.string :student_sex
      t.string :student_group
      t.string :marrital_status
      t.string :s_f_nm
      t.string :s_l_nm
      t.string :s_sex
      t.date :s_dob
      t.string :s_ethnicity
      t.string :s_legal_status
      t.string :s_education
      t.string :s_final_school
      t.string :final_school
      t.string :s_religion
      t.string :s_occupation
      t.string :s_english_level
      t.string :s_primary_language
      t.string :s_second_language
	  t.string :s_live_in
      t.string :number_of_kids
      t.text :kids_detail
      t.string :house_ownership
      t.string :house_type
      t.string :num_of_bedroom
      t.string :num_of_bathroom
      t.string :num_of_car
      t.string :num_of_pet
      t.text :pet_detail
      t.string :avail_room
      t.string :ride_avail
      t.text :comment
      t.string :way_to_know_nh
      t.string :ind_confirm
	  
      t.timestamps
    end
  end

  def self.down
    drop_table :host_family_infos
  end
end
