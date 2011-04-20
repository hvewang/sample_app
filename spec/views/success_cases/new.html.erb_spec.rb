require 'spec_helper'

describe "success_cases/new.html.erb" do
  before(:each) do
    assign(:success_case, stub_model(SuccessCase,
      :student_name => "MyString",
      :school_name => "MyString",
      :school_type => "MyString",
      :pics => "MyString",
      :status => "MyString",
      :user_id => 1,
      :msg => "MyText"
    ).as_new_record)
  end

  it "renders new success_case form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => success_cases_path, :method => "post" do
      assert_select "input#success_case_student_name", :name => "success_case[student_name]"
      assert_select "input#success_case_school_name", :name => "success_case[school_name]"
      assert_select "input#success_case_school_type", :name => "success_case[school_type]"
      assert_select "input#success_case_pics", :name => "success_case[pics]"
      assert_select "input#success_case_status", :name => "success_case[status]"
      assert_select "input#success_case_user_id", :name => "success_case[user_id]"
      assert_select "textarea#success_case_msg", :name => "success_case[msg]"
    end
  end
end
