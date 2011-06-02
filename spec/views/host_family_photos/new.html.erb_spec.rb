require 'spec_helper'

describe "host_family_photos/new.html.erb" do
  before(:each) do
    assign(:host_family_photo, stub_model(HostFamilyPhoto,
      :host_family_info_id => 1
    ).as_new_record)
  end

  it "renders new host_family_photo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => host_family_photos_path, :method => "post" do
      assert_select "input#host_family_photo_host_family_info_id", :name => "host_family_photo[host_family_info_id]"
    end
  end
end
