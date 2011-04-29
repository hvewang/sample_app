require 'spec_helper'

describe "news_updates/new.html.erb" do
  before(:each) do
    assign(:news_update, stub_model(NewsUpdate,
      :title_en => "MyString",
      :title_cn => "MyString",
      :news_type => "MyString",
      :context => "MyText",
      :status => "MyString"
    ).as_new_record)
  end

  it "renders new news_update form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => news_updates_path, :method => "post" do
      assert_select "input#news_update_title_en", :name => "news_update[title_en]"
      assert_select "input#news_update_title_cn", :name => "news_update[title_cn]"
      assert_select "input#news_update_news_type", :name => "news_update[news_type]"
      assert_select "textarea#news_update_context", :name => "news_update[context]"
      assert_select "input#news_update_status", :name => "news_update[status]"
    end
  end
end
