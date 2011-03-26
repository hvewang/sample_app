require 'spec_helper'

describe "college_rankings/show.html.erb" do
  before(:each) do
    @college_ranking = assign(:college_ranking, stub_model(CollegeRanking,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/School Type/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name En/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name Cn/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Tuition/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Enrollment/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Acceptance Rate/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Retention Rate/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Graduation Rate/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Class Size/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Sat Act/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Status/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Year/)
  end
end
