require 'spec_helper'

describe "highschool_rankings/index.html.erb" do
  before(:each) do
    assign(:highschool_rankings, [
      stub_model(HighschoolRanking,
        :year => "Year",
        :name_en => "Name En",
        :name_cn => "Name Cn",
        :address => "Address",
        :phone => "Phone",
        :url => "Url",
        :usnews_link => "Usnews Link",
        :comments => "Comments",
        :status => "Status"
      ),
      stub_model(HighschoolRanking,
        :year => "Year",
        :name_en => "Name En",
        :name_cn => "Name Cn",
        :address => "Address",
        :phone => "Phone",
        :url => "Url",
        :usnews_link => "Usnews Link",
        :comments => "Comments",
        :status => "Status"
      )
    ])
  end

  it "renders a list of highschool_rankings" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Year".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name En".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name Cn".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Usnews Link".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Comments".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Status".to_s, :count => 2
  end
end
