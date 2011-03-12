require 'spec_helper'

describe "service_grades/show.html.erb" do
  before(:each) do
    @service_grade = assign(:service_grade, stub_model(ServiceGrade,
      :grade => "Grade",
      :en_label => "En Label",
      :cn_label => "Cn Label"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Grade/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/En Label/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Cn Label/)
  end
end
