require 'spec_helper'

describe "college_rankings/new.html.erb" do
  before(:each) do
    assign(:college_ranking, stub_model(CollegeRanking,
      :school_type => "MyString",
      :rank => 1,
      :name_en => "MyString",
      :name_cn => "MyString",
      :tuition => "MyString",
      :enrollment => "MyString",
      :acceptance_rate => "MyString",
      :retention_rate => "MyString",
      :graduation_rate => "MyString",
      :class_size => "MyString",
      :sat_act => "MyString",
      :college_list_id => 1,
      :status => "MyString",
      :year => "MyString"
    ).as_new_record)
  end

  it "renders new college_ranking form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => college_rankings_path, :method => "post" do
      assert_select "input#college_ranking_school_type", :name => "college_ranking[school_type]"
      assert_select "input#college_ranking_rank", :name => "college_ranking[rank]"
      assert_select "input#college_ranking_name_en", :name => "college_ranking[name_en]"
      assert_select "input#college_ranking_name_cn", :name => "college_ranking[name_cn]"
      assert_select "input#college_ranking_tuition", :name => "college_ranking[tuition]"
      assert_select "input#college_ranking_enrollment", :name => "college_ranking[enrollment]"
      assert_select "input#college_ranking_acceptance_rate", :name => "college_ranking[acceptance_rate]"
      assert_select "input#college_ranking_retention_rate", :name => "college_ranking[retention_rate]"
      assert_select "input#college_ranking_graduation_rate", :name => "college_ranking[graduation_rate]"
      assert_select "input#college_ranking_class_size", :name => "college_ranking[class_size]"
      assert_select "input#college_ranking_sat_act", :name => "college_ranking[sat_act]"
      assert_select "input#college_ranking_college_list_id", :name => "college_ranking[college_list_id]"
      assert_select "input#college_ranking_status", :name => "college_ranking[status]"
      assert_select "input#college_ranking_year", :name => "college_ranking[year]"
    end
  end
end
