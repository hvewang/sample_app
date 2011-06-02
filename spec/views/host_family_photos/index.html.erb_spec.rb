require 'spec_helper'

describe "host_family_photos/index.html.erb" do
  before(:each) do
    assign(:host_family_photos, [
      stub_model(HostFamilyPhoto,
        :host_family_info_id => 1
      ),
      stub_model(HostFamilyPhoto,
        :host_family_info_id => 1
      )
    ])
  end

  it "renders a list of host_family_photos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
