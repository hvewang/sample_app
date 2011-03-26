require 'spec_helper'

describe "graduate_school_rankings/edit.html.erb" do
  before(:each) do
    @graduate_school_ranking = assign(:graduate_school_ranking, stub_model(GraduateSchoolRanking,
      :category => "MyString",
      :rank => 1,
      :name_en => "MyString",
      :name_cn => "MyString",
      :tuition => "MyString",
      :enrollment => "MyString",
      :gpa => "MyString",
      :gmat => "MyString",
      :acceptance_rate => "MyString",
      :salary => "MyString",
      :graduation_rate => "MyString",
      :college_list_id => 1,
      :status => "MyString",
      :year => "MyString"
    ))
  end

  it "renders the edit graduate_school_ranking form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => graduate_school_ranking_path(@graduate_school_ranking), :method => "post" do
      assert_select "input#graduate_school_ranking_category", :name => "graduate_school_ranking[category]"
      assert_select "input#graduate_school_ranking_rank", :name => "graduate_school_ranking[rank]"
      assert_select "input#graduate_school_ranking_name_en", :name => "graduate_school_ranking[name_en]"
      assert_select "input#graduate_school_ranking_name_cn", :name => "graduate_school_ranking[name_cn]"
      assert_select "input#graduate_school_ranking_tuition", :name => "graduate_school_ranking[tuition]"
      assert_select "input#graduate_school_ranking_enrollment", :name => "graduate_school_ranking[enrollment]"
      assert_select "input#graduate_school_ranking_gpa", :name => "graduate_school_ranking[gpa]"
      assert_select "input#graduate_school_ranking_gmat", :name => "graduate_school_ranking[gmat]"
      assert_select "input#graduate_school_ranking_acceptance_rate", :name => "graduate_school_ranking[acceptance_rate]"
      assert_select "input#graduate_school_ranking_salary", :name => "graduate_school_ranking[salary]"
      assert_select "input#graduate_school_ranking_graduation_rate", :name => "graduate_school_ranking[graduation_rate]"
      assert_select "input#graduate_school_ranking_college_list_id", :name => "graduate_school_ranking[college_list_id]"
      assert_select "input#graduate_school_ranking_status", :name => "graduate_school_ranking[status]"
      assert_select "input#graduate_school_ranking_year", :name => "graduate_school_ranking[year]"
    end
  end
end
