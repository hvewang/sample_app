require 'spec_helper'

describe "student_hostfamily_pictures/edit.html.erb" do
  before(:each) do
    @student_hostfamily_picture = assign(:student_hostfamily_picture, stub_model(StudentHostfamilyPicture,
      :student_info => "MyString",
      :family_info => "MyString",
      :location => "MyString"
    ))
  end

  it "renders the edit student_hostfamily_picture form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => student_hostfamily_picture_path(@student_hostfamily_picture), :method => "post" do
      assert_select "input#student_hostfamily_picture_student_info", :name => "student_hostfamily_picture[student_info]"
      assert_select "input#student_hostfamily_picture_family_info", :name => "student_hostfamily_picture[family_info]"
      assert_select "input#student_hostfamily_picture_location", :name => "student_hostfamily_picture[location]"
    end
  end
end
