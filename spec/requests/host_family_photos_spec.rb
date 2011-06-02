require 'spec_helper'

describe "HostFamilyPhotos" do
  describe "GET /host_family_photos" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get host_family_photos_path
      response.status.should be(200)
    end
  end
end
