require 'spec_helper'

describe "success_cases/index.html.erb" do
  before(:each) do
    assign(:success_cases, [
      stub_model(SuccessCase,
        :student_name => "Student Name",
        :school_name => "School Name",
        :school_type => "School Type",
        :pics => "Pics",
        :status => "Status",
        :user_id => 1,
        :msg => "MyText"
      ),
      stub_model(SuccessCase,
        :student_name => "Student Name",
        :school_name => "School Name",
        :school_type => "School Type",
        :pics => "Pics",
        :status => "Status",
        :user_id => 1,
        :msg => "MyText"
      )
    ])
  end

  it "renders a list of success_cases" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Student Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "School Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "School Type".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Pics".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
