require 'spec_helper'

describe "service_grades/edit.html.erb" do
  before(:each) do
    @service_grade = assign(:service_grade, stub_model(ServiceGrade,
      :grade => "MyString",
      :en_label => "MyString",
      :cn_label => "MyString"
    ))
  end

  it "renders the edit service_grade form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => service_grade_path(@service_grade), :method => "post" do
      assert_select "input#service_grade_grade", :name => "service_grade[grade]"
      assert_select "input#service_grade_en_label", :name => "service_grade[en_label]"
      assert_select "input#service_grade_cn_label", :name => "service_grade[cn_label]"
    end
  end
end
