require 'spec_helper'

describe "student_hostfamily_pictures/index.html.erb" do
  before(:each) do
    assign(:student_hostfamily_pictures, [
      stub_model(StudentHostfamilyPicture,
        :student_info => "Student Info",
        :family_info => "Family Info",
        :location => "Location"
      ),
      stub_model(StudentHostfamilyPicture,
        :student_info => "Student Info",
        :family_info => "Family Info",
        :location => "Location"
      )
    ])
  end

  it "renders a list of student_hostfamily_pictures" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Student Info".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Family Info".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Location".to_s, :count => 2
  end
end
