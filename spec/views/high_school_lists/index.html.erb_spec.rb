require 'spec_helper'

describe "high_school_lists/index.html.erb" do
  before(:each) do
    assign(:high_school_lists, [
      stub_model(HighSchoolList,
        :name_en => "Name En",
        :name_cn => "Name Cn",
        :hs_type => "Hs Type",
        :address => "Address",
        :state => "State",
        :zip => "Zip",
        :website => "Website",
        :about_en => "MyText",
        :about_cn => "MyText",
        :school_pics => "School Pics",
        :founded => "Founded",
        :grade_en => "Grade En",
        :grade_cn => "Grade Cn",
        :student_type_en => "Student Type En",
        :student_type_cn => "Student Type Cn",
        :religion_en => "Religion En",
        :religion_cn => "Religion Cn",
        :total_student => "Total Student",
        :total_teacher => "Total Teacher",
        :teacher_student_ratio => "Teacher Student Ratio",
        :percentage_of_asia_student => "Percentage Of Asia Student",
        :num_of_chinese_student => "Num Of Chinese Student",
        :num_of_ap_class => "Num Of Ap Class",
        :num_of_honor_class => "Num Of Honor Class",
        :esl_class => "Esl Class",
        :school_bus => "School Bus",
        :winter_entry_en => "Winter Entry En",
        :winter_entry_cn => "Winter Entry Cn",
        :fall_entry_en => "Fall Entry En",
        :fall_entry_cn => "Fall Entry Cn",
        :airport_en => "Airport En",
        :airport_cn => "Airport Cn",
        :uniform => "Uniform",
        :interview => "Interview",
        :required_test => "Required Test",
        :avg_sac_atc => "Avg Sac Atc",
        :tuition => "Tuition",
        :other_fee_en => "Other Fee En",
        :other_fee_cn => "Other Fee Cn",
        :facility_en => "MyText",
        :facility_cn => "MyText",
        :top_university => "MyText",
        :club_activity_en => "MyText",
        :club_activity_cn => "MyText",
        :city_nearby_en => "City Nearby En",
        :city_nearby_cn => "City Nearby Cn",
        :about_neary_city_en => "MyText",
        :about_nearby_city_cn => "MyText",
        :nearby_city_pics => "Nearby City Pics",
        :school_level => "School Level",
        :remarks => "MyText"
      ),
      stub_model(HighSchoolList,
        :name_en => "Name En",
        :name_cn => "Name Cn",
        :hs_type => "Hs Type",
        :address => "Address",
        :state => "State",
        :zip => "Zip",
        :website => "Website",
        :about_en => "MyText",
        :about_cn => "MyText",
        :school_pics => "School Pics",
        :founded => "Founded",
        :grade_en => "Grade En",
        :grade_cn => "Grade Cn",
        :student_type_en => "Student Type En",
        :student_type_cn => "Student Type Cn",
        :religion_en => "Religion En",
        :religion_cn => "Religion Cn",
        :total_student => "Total Student",
        :total_teacher => "Total Teacher",
        :teacher_student_ratio => "Teacher Student Ratio",
        :percentage_of_asia_student => "Percentage Of Asia Student",
        :num_of_chinese_student => "Num Of Chinese Student",
        :num_of_ap_class => "Num Of Ap Class",
        :num_of_honor_class => "Num Of Honor Class",
        :esl_class => "Esl Class",
        :school_bus => "School Bus",
        :winter_entry_en => "Winter Entry En",
        :winter_entry_cn => "Winter Entry Cn",
        :fall_entry_en => "Fall Entry En",
        :fall_entry_cn => "Fall Entry Cn",
        :airport_en => "Airport En",
        :airport_cn => "Airport Cn",
        :uniform => "Uniform",
        :interview => "Interview",
        :required_test => "Required Test",
        :avg_sac_atc => "Avg Sac Atc",
        :tuition => "Tuition",
        :other_fee_en => "Other Fee En",
        :other_fee_cn => "Other Fee Cn",
        :facility_en => "MyText",
        :facility_cn => "MyText",
        :top_university => "MyText",
        :club_activity_en => "MyText",
        :club_activity_cn => "MyText",
        :city_nearby_en => "City Nearby En",
        :city_nearby_cn => "City Nearby Cn",
        :about_neary_city_en => "MyText",
        :about_nearby_city_cn => "MyText",
        :nearby_city_pics => "Nearby City Pics",
        :school_level => "School Level",
        :remarks => "MyText"
      )
    ])
  end

  it "renders a list of high_school_lists" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name En".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name Cn".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Hs Type".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "State".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Zip".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Website".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "School Pics".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Founded".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Grade En".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Grade Cn".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Student Type En".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Student Type Cn".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Religion En".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Religion Cn".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Total Student".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Total Teacher".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Teacher Student Ratio".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Percentage Of Asia Student".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Num Of Chinese Student".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Num Of Ap Class".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Num Of Honor Class".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Esl Class".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "School Bus".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Winter Entry En".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Winter Entry Cn".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Fall Entry En".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Fall Entry Cn".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Airport En".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Airport Cn".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Uniform".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Interview".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Required Test".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Avg Sac Atc".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Tuition".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Other Fee En".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Other Fee Cn".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "City Nearby En".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "City Nearby Cn".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nearby City Pics".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "School Level".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
