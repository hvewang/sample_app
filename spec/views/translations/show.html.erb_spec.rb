require 'spec_helper'

describe "translations/show.html.erb" do
  before(:each) do
    @translation = assign(:translation, stub_model(Translation,
      :nm => "Nm",
      :controller_nm => "Controller Nm",
      :model_nm => "Model Nm",
      :action_nm => "Action Nm",
      :func => "Func",
      :en_txt => "MyText",
      :cn_txt => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nm/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Controller Nm/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Model Nm/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Action Nm/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Func/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end
