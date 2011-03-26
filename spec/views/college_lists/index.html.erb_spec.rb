require 'spec_helper'

describe "college_lists/index.html.erb" do
  before(:each) do
    assign(:college_lists, [
      stub_model(CollegeList,
        :name_en => "Name En",
        :name_cn => "Name Cn",
        :address => "Address",
        :website => "Website",
        :school_type => "School Type",
        :founded => "Founded",
        :total_student => "Total Student",
        :enrollment => "Enrollment",
        :acceptance_rate => "Acceptance Rate",
        :teacher_student_ratio => "Teacher Student Ratio",
        :i18n_student_info => "MyText",
        :sat_score => "Sat Score",
        :ranking => "MyText",
        :tuition_fee => "MyText",
        :financial_aid => "MyText",
        :about_school => "MyText",
        :academic_calendar => "Academic Calendar",
        :popular_major => "MyText",
        :special_feature => "MyText",
        :degree => "MyText",
        :contact_info => "MyText",
        :setting => "Setting",
        :pics => "Pics",
        :application_deadline => "MyText",
        :applciation_fee => "Applciation Fee",
        :application_method => "Application Method",
        :application_form => "Application Form",
        :application_material => "MyText",
        :application_mustknow => "MyText",
        :double_admission => "Double Admission",
        :lang_requirement => "MyText",
        :d_lang_requirement => "MyText",
        :recommendation_form => "",
        :financial_form => "Financial Form",
        :admission_requirement => "MyText",
        :mail_test_score => "Mail Test Score",
        :airport_help => "Airport Help",
        :boardidng => "Boardidng",
        :notice => "MyText",
        :remark => "MyText",
        :status => "Status"
      ),
      stub_model(CollegeList,
        :name_en => "Name En",
        :name_cn => "Name Cn",
        :address => "Address",
        :website => "Website",
        :school_type => "School Type",
        :founded => "Founded",
        :total_student => "Total Student",
        :enrollment => "Enrollment",
        :acceptance_rate => "Acceptance Rate",
        :teacher_student_ratio => "Teacher Student Ratio",
        :i18n_student_info => "MyText",
        :sat_score => "Sat Score",
        :ranking => "MyText",
        :tuition_fee => "MyText",
        :financial_aid => "MyText",
        :about_school => "MyText",
        :academic_calendar => "Academic Calendar",
        :popular_major => "MyText",
        :special_feature => "MyText",
        :degree => "MyText",
        :contact_info => "MyText",
        :setting => "Setting",
        :pics => "Pics",
        :application_deadline => "MyText",
        :applciation_fee => "Applciation Fee",
        :application_method => "Application Method",
        :application_form => "Application Form",
        :application_material => "MyText",
        :application_mustknow => "MyText",
        :double_admission => "Double Admission",
        :lang_requirement => "MyText",
        :d_lang_requirement => "MyText",
        :recommendation_form => "",
        :financial_form => "Financial Form",
        :admission_requirement => "MyText",
        :mail_test_score => "Mail Test Score",
        :airport_help => "Airport Help",
        :boardidng => "Boardidng",
        :notice => "MyText",
        :remark => "MyText",
        :status => "Status"
      )
    ])
  end

  it "renders a list of college_lists" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name En".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name Cn".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Website".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "School Type".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Founded".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Total Student".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Enrollment".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Acceptance Rate".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Teacher Student Ratio".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Sat Score".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Academic Calendar".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Setting".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Pics".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Applciation Fee".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Application Method".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Application Form".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Double Admission".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Financial Form".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Mail Test Score".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Airport Help".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Boardidng".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Status".to_s, :count => 2
  end
end
