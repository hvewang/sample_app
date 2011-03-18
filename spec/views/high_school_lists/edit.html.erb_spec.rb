require 'spec_helper'

describe "high_school_lists/edit.html.erb" do
  before(:each) do
    @high_school_list = assign(:high_school_list, stub_model(HighSchoolList,
      :name_en => "MyString",
      :name_cn => "MyString",
      :hs_type => "MyString",
      :address => "MyString",
      :state => "MyString",
      :zip => "MyString",
      :website => "MyString",
      :about_en => "MyText",
      :about_cn => "MyText",
      :school_pics => "MyString",
      :founded => "MyString",
      :grade_en => "MyString",
      :grade_cn => "MyString",
      :student_type_en => "MyString",
      :student_type_cn => "MyString",
      :religion_en => "MyString",
      :religion_cn => "MyString",
      :total_student => "MyString",
      :total_teacher => "MyString",
      :teacher_student_ratio => "MyString",
      :percentage_of_asia_student => "MyString",
      :num_of_chinese_student => "MyString",
      :num_of_ap_class => "MyString",
      :num_of_honor_class => "MyString",
      :esl_class => "MyString",
      :school_bus => "MyString",
      :winter_entry_en => "MyString",
      :winter_entry_cn => "MyString",
      :fall_entry_en => "MyString",
      :fall_entry_cn => "MyString",
      :airport_en => "MyString",
      :airport_cn => "MyString",
      :uniform => "MyString",
      :interview => "MyString",
      :required_test => "MyString",
      :avg_sac_atc => "MyString",
      :tuition => "MyString",
      :other_fee_en => "MyString",
      :other_fee_cn => "MyString",
      :facility_en => "MyText",
      :facility_cn => "MyText",
      :top_university => "MyText",
      :club_activity_en => "MyText",
      :club_activity_cn => "MyText",
      :city_nearby_en => "MyString",
      :city_nearby_cn => "MyString",
      :about_neary_city_en => "MyText",
      :about_nearby_city_cn => "MyText",
      :nearby_city_pics => "MyString",
      :school_level => "MyString",
      :remarks => "MyText"
    ))
  end

  it "renders the edit high_school_list form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => high_school_list_path(@high_school_list), :method => "post" do
      assert_select "input#high_school_list_name_en", :name => "high_school_list[name_en]"
      assert_select "input#high_school_list_name_cn", :name => "high_school_list[name_cn]"
      assert_select "input#high_school_list_hs_type", :name => "high_school_list[hs_type]"
      assert_select "input#high_school_list_address", :name => "high_school_list[address]"
      assert_select "input#high_school_list_state", :name => "high_school_list[state]"
      assert_select "input#high_school_list_zip", :name => "high_school_list[zip]"
      assert_select "input#high_school_list_website", :name => "high_school_list[website]"
      assert_select "textarea#high_school_list_about_en", :name => "high_school_list[about_en]"
      assert_select "textarea#high_school_list_about_cn", :name => "high_school_list[about_cn]"
      assert_select "input#high_school_list_school_pics", :name => "high_school_list[school_pics]"
      assert_select "input#high_school_list_founded", :name => "high_school_list[founded]"
      assert_select "input#high_school_list_grade_en", :name => "high_school_list[grade_en]"
      assert_select "input#high_school_list_grade_cn", :name => "high_school_list[grade_cn]"
      assert_select "input#high_school_list_student_type_en", :name => "high_school_list[student_type_en]"
      assert_select "input#high_school_list_student_type_cn", :name => "high_school_list[student_type_cn]"
      assert_select "input#high_school_list_religion_en", :name => "high_school_list[religion_en]"
      assert_select "input#high_school_list_religion_cn", :name => "high_school_list[religion_cn]"
      assert_select "input#high_school_list_total_student", :name => "high_school_list[total_student]"
      assert_select "input#high_school_list_total_teacher", :name => "high_school_list[total_teacher]"
      assert_select "input#high_school_list_teacher_student_ratio", :name => "high_school_list[teacher_student_ratio]"
      assert_select "input#high_school_list_percentage_of_asia_student", :name => "high_school_list[percentage_of_asia_student]"
      assert_select "input#high_school_list_num_of_chinese_student", :name => "high_school_list[num_of_chinese_student]"
      assert_select "input#high_school_list_num_of_ap_class", :name => "high_school_list[num_of_ap_class]"
      assert_select "input#high_school_list_num_of_honor_class", :name => "high_school_list[num_of_honor_class]"
      assert_select "input#high_school_list_esl_class", :name => "high_school_list[esl_class]"
      assert_select "input#high_school_list_school_bus", :name => "high_school_list[school_bus]"
      assert_select "input#high_school_list_winter_entry_en", :name => "high_school_list[winter_entry_en]"
      assert_select "input#high_school_list_winter_entry_cn", :name => "high_school_list[winter_entry_cn]"
      assert_select "input#high_school_list_fall_entry_en", :name => "high_school_list[fall_entry_en]"
      assert_select "input#high_school_list_fall_entry_cn", :name => "high_school_list[fall_entry_cn]"
      assert_select "input#high_school_list_airport_en", :name => "high_school_list[airport_en]"
      assert_select "input#high_school_list_airport_cn", :name => "high_school_list[airport_cn]"
      assert_select "input#high_school_list_uniform", :name => "high_school_list[uniform]"
      assert_select "input#high_school_list_interview", :name => "high_school_list[interview]"
      assert_select "input#high_school_list_required_test", :name => "high_school_list[required_test]"
      assert_select "input#high_school_list_avg_sac_atc", :name => "high_school_list[avg_sac_atc]"
      assert_select "input#high_school_list_tuition", :name => "high_school_list[tuition]"
      assert_select "input#high_school_list_other_fee_en", :name => "high_school_list[other_fee_en]"
      assert_select "input#high_school_list_other_fee_cn", :name => "high_school_list[other_fee_cn]"
      assert_select "textarea#high_school_list_facility_en", :name => "high_school_list[facility_en]"
      assert_select "textarea#high_school_list_facility_cn", :name => "high_school_list[facility_cn]"
      assert_select "textarea#high_school_list_top_university", :name => "high_school_list[top_university]"
      assert_select "textarea#high_school_list_club_activity_en", :name => "high_school_list[club_activity_en]"
      assert_select "textarea#high_school_list_club_activity_cn", :name => "high_school_list[club_activity_cn]"
      assert_select "input#high_school_list_city_nearby_en", :name => "high_school_list[city_nearby_en]"
      assert_select "input#high_school_list_city_nearby_cn", :name => "high_school_list[city_nearby_cn]"
      assert_select "textarea#high_school_list_about_neary_city_en", :name => "high_school_list[about_neary_city_en]"
      assert_select "textarea#high_school_list_about_nearby_city_cn", :name => "high_school_list[about_nearby_city_cn]"
      assert_select "input#high_school_list_nearby_city_pics", :name => "high_school_list[nearby_city_pics]"
      assert_select "input#high_school_list_school_level", :name => "high_school_list[school_level]"
      assert_select "textarea#high_school_list_remarks", :name => "high_school_list[remarks]"
    end
  end
end
