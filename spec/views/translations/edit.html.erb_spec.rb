require 'spec_helper'

describe "translations/edit.html.erb" do
  before(:each) do
    @translation = assign(:translation, stub_model(Translation,
      :nm => "MyString",
      :controller_nm => "MyString",
      :model_nm => "MyString",
      :action_nm => "MyString",
      :func => "MyString",
      :en_txt => "MyText",
      :cn_txt => "MyText"
    ))
  end

  it "renders the edit translation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => translation_path(@translation), :method => "post" do
      assert_select "input#translation_nm", :name => "translation[nm]"
      assert_select "input#translation_controller_nm", :name => "translation[controller_nm]"
      assert_select "input#translation_model_nm", :name => "translation[model_nm]"
      assert_select "input#translation_action_nm", :name => "translation[action_nm]"
      assert_select "input#translation_func", :name => "translation[func]"
      assert_select "textarea#translation_en_txt", :name => "translation[en_txt]"
      assert_select "textarea#translation_cn_txt", :name => "translation[cn_txt]"
    end
  end
end
