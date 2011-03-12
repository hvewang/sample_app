require 'spec_helper'

describe "service_grades/index.html.erb" do
  before(:each) do
    assign(:service_grades, [
      stub_model(ServiceGrade,
        :grade => "Grade",
        :en_label => "En Label",
        :cn_label => "Cn Label"
      ),
      stub_model(ServiceGrade,
        :grade => "Grade",
        :en_label => "En Label",
        :cn_label => "Cn Label"
      )
    ])
  end

  it "renders a list of service_grades" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Grade".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "En Label".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Cn Label".to_s, :count => 2
  end
end
