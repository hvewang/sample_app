require 'spec_helper'

describe "host_family_photos/show.html.erb" do
  before(:each) do
    @host_family_photo = assign(:host_family_photo, stub_model(HostFamilyPhoto,
      :host_family_info_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
