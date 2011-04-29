require 'spec_helper'

describe "newhope_teams/new.html.erb" do
  before(:each) do
    assign(:newhope_team, stub_model(NewhopeTeam,
      :name_en => "MyString",
      :name_cn => "MyString",
      :title_en => "MyString",
      :title_cn => "MyString",
      :email => "MyString",
      :phone => "MyString",
      :record_type => "MyString",
      :branch_name_en => "MyString",
      :branch_name_cn => "MyString",
      :country_en => "MyString",
      :country_cn => "MyString",
      :pic => "MyString",
      :resume => "MyText",
      :sort_order => 1,
      :status => "MyString"
    ).as_new_record)
  end

  it "renders new newhope_team form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => newhope_teams_path, :method => "post" do
      assert_select "input#newhope_team_name_en", :name => "newhope_team[name_en]"
      assert_select "input#newhope_team_name_cn", :name => "newhope_team[name_cn]"
      assert_select "input#newhope_team_title_en", :name => "newhope_team[title_en]"
      assert_select "input#newhope_team_title_cn", :name => "newhope_team[title_cn]"
      assert_select "input#newhope_team_email", :name => "newhope_team[email]"
      assert_select "input#newhope_team_phone", :name => "newhope_team[phone]"
      assert_select "input#newhope_team_record_type", :name => "newhope_team[record_type]"
      assert_select "input#newhope_team_branch_name_en", :name => "newhope_team[branch_name_en]"
      assert_select "input#newhope_team_branch_name_cn", :name => "newhope_team[branch_name_cn]"
      assert_select "input#newhope_team_country_en", :name => "newhope_team[country_en]"
      assert_select "input#newhope_team_country_cn", :name => "newhope_team[country_cn]"
      assert_select "input#newhope_team_pic", :name => "newhope_team[pic]"
      assert_select "textarea#newhope_team_resume", :name => "newhope_team[resume]"
      assert_select "input#newhope_team_sort_order", :name => "newhope_team[sort_order]"
      assert_select "input#newhope_team_status", :name => "newhope_team[status]"
    end
  end
end
