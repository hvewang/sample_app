require 'spec_helper'

describe "college_rankings/index.html.erb" do
  before(:each) do
    assign(:college_rankings, [
      stub_model(CollegeRanking,
        :school_type => "School Type",
        :rank => 1,
        :name_en => "Name En",
        :name_cn => "Name Cn",
        :tuition => "Tuition",
        :enrollment => "Enrollment",
        :acceptance_rate => "Acceptance Rate",
        :retention_rate => "Retention Rate",
        :graduation_rate => "Graduation Rate",
        :class_size => "Class Size",
        :sat_act => "Sat Act",
        :college_list_id => 1,
        :status => "Status",
        :year => "Year"
      ),
      stub_model(CollegeRanking,
        :school_type => "School Type",
        :rank => 1,
        :name_en => "Name En",
        :name_cn => "Name Cn",
        :tuition => "Tuition",
        :enrollment => "Enrollment",
        :acceptance_rate => "Acceptance Rate",
        :retention_rate => "Retention Rate",
        :graduation_rate => "Graduation Rate",
        :class_size => "Class Size",
        :sat_act => "Sat Act",
        :college_list_id => 1,
        :status => "Status",
        :year => "Year"
      )
    ])
  end

  it "renders a list of college_rankings" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "School Type".to_s, :count => 2
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
    assert_select "tr>td", :text => "Acceptance Rate".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Retention Rate".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Graduation Rate".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Class Size".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Sat Act".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Year".to_s, :count => 2
  end
end
