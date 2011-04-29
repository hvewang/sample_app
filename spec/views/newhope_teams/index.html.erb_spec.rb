require 'spec_helper'

describe "newhope_teams/index.html.erb" do
  before(:each) do
    assign(:newhope_teams, [
      stub_model(NewhopeTeam,
        :name_en => "Name En",
        :name_cn => "Name Cn",
        :title_en => "Title En",
        :title_cn => "Title Cn",
        :email => "Email",
        :phone => "Phone",
        :record_type => "Record Type",
        :branch_name_en => "Branch Name En",
        :branch_name_cn => "Branch Name Cn",
        :country_en => "Country En",
        :country_cn => "Country Cn",
        :pic => "Pic",
        :resume => "MyText",
        :sort_order => 1,
        :status => "Status"
      ),
      stub_model(NewhopeTeam,
        :name_en => "Name En",
        :name_cn => "Name Cn",
        :title_en => "Title En",
        :title_cn => "Title Cn",
        :email => "Email",
        :phone => "Phone",
        :record_type => "Record Type",
        :branch_name_en => "Branch Name En",
        :branch_name_cn => "Branch Name Cn",
        :country_en => "Country En",
        :country_cn => "Country Cn",
        :pic => "Pic",
        :resume => "MyText",
        :sort_order => 1,
        :status => "Status"
      )
    ])
  end

  it "renders a list of newhope_teams" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name En".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name Cn".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title En".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title Cn".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Record Type".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Branch Name En".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Branch Name Cn".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Country En".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Country Cn".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Pic".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Status".to_s, :count => 2
  end
end
