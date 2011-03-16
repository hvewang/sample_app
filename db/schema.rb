# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110313020327) do

  create_table "host_family_infos", :force => true do |t|
    t.string   "f_nm"
    t.string   "l_nm"
    t.string   "sex"
    t.date     "dob"
    t.string   "street"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "homephone"
    t.string   "cellphone"
    t.string   "email"
    t.string   "ethnicity"
    t.string   "legal_status"
    t.string   "education"
    t.string   "religion"
    t.string   "occupation"
    t.string   "english_level"
    t.string   "primary_language"
    t.string   "second_language"
    t.string   "homestay_experience"
    t.string   "student_sex"
    t.string   "student_group"
    t.string   "marrital_status"
    t.string   "s_f_nm"
    t.string   "s_l_nm"
    t.string   "s_sex"
    t.date     "s_dob"
    t.string   "s_ethnicity"
    t.string   "s_legal_status"
    t.string   "s_education"
    t.string   "s_final_school"
    t.string   "final_school"
    t.string   "s_religion"
    t.string   "s_occupation"
    t.string   "s_english_level"
    t.string   "s_primary_language"
    t.string   "s_second_language"
    t.string   "s_live_in"
    t.string   "number_of_kids"
    t.text     "kids_detail"
    t.string   "house_ownership"
    t.string   "house_type"
    t.string   "num_of_bedroom"
    t.string   "num_of_bathroom"
    t.string   "num_of_car"
    t.string   "num_of_pet"
    t.text     "pet_detail"
    t.string   "avail_room"
    t.string   "ride_avail"
    t.text     "comment"
    t.string   "way_to_know_nh"
    t.string   "ind_confirm"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "microposts", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "relationships", :force => true do |t|
    t.integer  "follower_id"
    t.integer  "followed_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "service_grades", :force => true do |t|
    t.string   "grade"
    t.string   "en_label"
    t.string   "cn_label"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "service_requests", :force => true do |t|
    t.string   "student_name"
    t.string   "year_of_birth"
    t.string   "gender"
    t.string   "parent_name"
    t.string   "relationship"
    t.string   "street"
    t.string   "city"
    t.string   "country"
    t.string   "nationality"
    t.string   "cell_phone"
    t.string   "home_phone"
    t.string   "email"
    t.string   "service_grade"
    t.string   "service_type"
    t.string   "service_city"
    t.string   "service_state"
    t.text     "service_detail"
    t.string   "way_to_know_nh"
    t.text     "comments"
    t.string   "status"
    t.integer  "updated_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "translations", :force => true do |t|
    t.string   "nm"
    t.string   "controller_nm"
    t.string   "model_nm"
    t.string   "action_nm"
    t.string   "func"
    t.text     "zw_txt"
    t.text     "zw2_txt"
    t.text     "en_txt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "encrypted_password"
    t.string   "salt"
    t.integer  "user_type_id",       :default => 3
    t.string   "cellphone"
    t.string   "homephone"
  end

end
