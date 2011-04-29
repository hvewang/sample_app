require 'spec_helper'

describe "highschool_rankings/edit.html.erb" do
  before(:each) do
    @highschool_ranking = assign(:highschool_ranking, stub_model(HighschoolRanking,
      :year => "MyString",
      :name_en => "MyString",
      :name_cn => "MyString",
      :address => "MyString",
      :phone => "MyString",
      :url => "MyString",
      :usnews_link => "MyString",
      :comments => "MyString",
      :status => "MyString"
    ))
  end

  it "renders the edit highschool_ranking form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => highschool_ranking_path(@highschool_ranking), :method => "post" do
      assert_select "input#highschool_ranking_year", :name => "highschool_ranking[year]"
      assert_select "input#highschool_ranking_name_en", :name => "highschool_ranking[name_en]"
      assert_select "input#highschool_ranking_name_cn", :name => "highschool_ranking[name_cn]"
      assert_select "input#highschool_ranking_address", :name => "highschool_ranking[address]"
      assert_select "input#highschool_ranking_phone", :name => "highschool_ranking[phone]"
      assert_select "input#highschool_ranking_url", :name => "highschool_ranking[url]"
      assert_select "input#highschool_ranking_usnews_link", :name => "highschool_ranking[usnews_link]"
      assert_select "input#highschool_ranking_comments", :name => "highschool_ranking[comments]"
      assert_select "input#highschool_ranking_status", :name => "highschool_ranking[status]"
    end
  end
end
