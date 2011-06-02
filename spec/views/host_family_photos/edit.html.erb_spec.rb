require 'spec_helper'

describe "host_family_photos/edit.html.erb" do
  before(:each) do
    @host_family_photo = assign(:host_family_photo, stub_model(HostFamilyPhoto,
      :host_family_info_id => 1
    ))
  end

  it "renders the edit host_family_photo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => host_family_photo_path(@host_family_photo), :method => "post" do
      assert_select "input#host_family_photo_host_family_info_id", :name => "host_family_photo[host_family_info_id]"
    end
  end
end
