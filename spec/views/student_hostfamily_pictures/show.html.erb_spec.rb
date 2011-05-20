require 'spec_helper'

describe "student_hostfamily_pictures/show.html.erb" do
  before(:each) do
    @student_hostfamily_picture = assign(:student_hostfamily_picture, stub_model(StudentHostfamilyPicture,
      :student_info => "Student Info",
      :family_info => "Family Info",
      :location => "Location"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Student Info/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Family Info/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Location/)
  end
end
