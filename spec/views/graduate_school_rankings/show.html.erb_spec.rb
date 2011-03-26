require 'spec_helper'

describe "graduate_school_rankings/show.html.erb" do
  before(:each) do
    @graduate_school_ranking = assign(:graduate_school_ranking, stub_model(GraduateSchoolRanking,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Category/)
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
    rendered.should match(/Gpa/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Gmat/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Acceptance Rate/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Salary/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Graduation Rate/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Status/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Year/)
  end
end
