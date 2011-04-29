require 'spec_helper'

describe "news_updates/index.html.erb" do
  before(:each) do
    assign(:news_updates, [
      stub_model(NewsUpdate,
        :title_en => "Title En",
        :title_cn => "Title Cn",
        :news_type => "News Type",
        :context => "MyText",
        :status => "Status"
      ),
      stub_model(NewsUpdate,
        :title_en => "Title En",
        :title_cn => "Title Cn",
        :news_type => "News Type",
        :context => "MyText",
        :status => "Status"
      )
    ])
  end

  it "renders a list of news_updates" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title En".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title Cn".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "News Type".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Status".to_s, :count => 2
  end
end
