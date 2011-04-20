require 'spec_helper'

describe "success_cases/show.html.erb" do
  before(:each) do
    @success_case = assign(:success_case, stub_model(SuccessCase,
      :student_name => "Student Name",
      :school_name => "School Name",
      :school_type => "School Type",
      :pics => "Pics",
      :status => "Status",
      :user_id => 1,
      :msg => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Student Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/School Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/School Type/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Pics/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Status/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end
