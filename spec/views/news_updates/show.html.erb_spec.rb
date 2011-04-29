require 'spec_helper'

describe "news_updates/show.html.erb" do
  before(:each) do
    @news_update = assign(:news_update, stub_model(NewsUpdate,
      :title_en => "Title En",
      :title_cn => "Title Cn",
      :news_type => "News Type",
      :context => "MyText",
      :status => "Status"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title En/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title Cn/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/News Type/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Status/)
  end
end
