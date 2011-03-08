require 'spec_helper'

describe "translations/index.html.erb" do
  before(:each) do
    assign(:translations, [
      stub_model(Translation,
        :nm => "Nm",
        :controller_nm => "Controller Nm",
        :model_nm => "Model Nm",
        :action_nm => "Action Nm",
        :func => "Func",
        :en_txt => "MyText",
        :cn_txt => "MyText"
      ),
      stub_model(Translation,
        :nm => "Nm",
        :controller_nm => "Controller Nm",
        :model_nm => "Model Nm",
        :action_nm => "Action Nm",
        :func => "Func",
        :en_txt => "MyText",
        :cn_txt => "MyText"
      )
    ])
  end

  it "renders a list of translations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nm".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Controller Nm".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Model Nm".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Action Nm".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Func".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
