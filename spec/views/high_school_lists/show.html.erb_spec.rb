require 'spec_helper'

describe "high_school_lists/show.html.erb" do
  before(:each) do
    @high_school_list = assign(:high_school_list, stub_model(HighSchoolList,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name En/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name Cn/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Hs Type/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Address/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/State/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Zip/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Website/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/School Pics/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Founded/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Grade En/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Grade Cn/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Student Type En/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Student Type Cn/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Religion En/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Religion Cn/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Total Student/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Total Teacher/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Teacher Student Ratio/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Percentage Of Asia Student/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Num Of Chinese Student/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Num Of Ap Class/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Num Of Honor Class/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Esl Class/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/School Bus/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Winter Entry En/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Winter Entry Cn/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Fall Entry En/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Fall Entry Cn/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Airport En/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Airport Cn/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Uniform/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Interview/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Required Test/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Avg Sac Atc/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Tuition/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Other Fee En/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Other Fee Cn/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/City Nearby En/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/City Nearby Cn/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nearby City Pics/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/School Level/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end
