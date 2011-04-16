require 'spec_helper'

describe "locations/edit.html.erb" do
  before(:each) do
    @location = assign(:location, stub_model(Location,
      :name => "MyString",
      :address => "MyString",
      :longitude => 1.5,
      :latitude => 1.5
    ))
  end

  it "renders the edit location form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => location_path(@location), :method => "post" do
      assert_select "input#location_name", :name => "location[name]"
      assert_select "input#location_address", :name => "location[address]"
      assert_select "input#location_longitude", :name => "location[longitude]"
      assert_select "input#location_latitude", :name => "location[latitude]"
    end
  end
end
