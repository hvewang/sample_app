require 'spec_helper'

describe "graduate_school_rankings/index.html.erb" do
  before(:each) do
    assign(:graduate_school_rankings, [
      stub_model(GraduateSchoolRanking,
        :category => "Category",
        :rank => 1,
        :name_en => "Name En",
        :name_cn => "Name Cn",
        :tuition => "Tuition",
        :enrollment => "Enrollment",
        :gpa => "Gpa",
        :gmat => "Gmat",
        :acceptance_rate => "Acceptance Rate",
        :salary => "Salary",
        :graduation_rate => "Graduation Rate",
        :college_list_id => 1,
        :status => "Status",
        :year => "Year"
      ),
      stub_model(GraduateSchoolRanking,
        :category => "Category",
        :rank => 1,
        :name_en => "Name En",
        :name_cn => "Name Cn",
        :tuition => "Tuition",
        :enrollment => "Enrollment",
        :gpa => "Gpa",
        :gmat => "Gmat",
        :acceptance_rate => "Acceptance Rate",
        :salary => "Salary",
        :graduation_rate => "Graduation Rate",
        :college_list_id => 1,
        :status => "Status",
        :year => "Year"
      )
    ])
  end

  it "renders a list of graduate_school_rankings" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Category".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name En".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name Cn".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Tuition".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Enrollment".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Gpa".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Gmat".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Acceptance Rate".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Salary".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Graduation Rate".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Year".to_s, :count => 2
  end
end
