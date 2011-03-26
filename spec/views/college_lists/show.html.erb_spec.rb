require 'spec_helper'

describe "college_lists/show.html.erb" do
  before(:each) do
    @college_list = assign(:college_list, stub_model(CollegeList,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name En/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name Cn/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Address/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Website/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/School Type/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Founded/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Total Student/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Enrollment/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Acceptance Rate/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Teacher Student Ratio/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Sat Score/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Academic Calendar/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Setting/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Pics/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Applciation Fee/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Application Method/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Application Form/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Double Admission/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Financial Form/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Mail Test Score/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Airport Help/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Boardidng/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Status/)
  end
end
