require "spec_helper"

describe HostFamilyPhotosController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/host_family_photos" }.should route_to(:controller => "host_family_photos", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/host_family_photos/new" }.should route_to(:controller => "host_family_photos", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/host_family_photos/1" }.should route_to(:controller => "host_family_photos", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/host_family_photos/1/edit" }.should route_to(:controller => "host_family_photos", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/host_family_photos" }.should route_to(:controller => "host_family_photos", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/host_family_photos/1" }.should route_to(:controller => "host_family_photos", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/host_family_photos/1" }.should route_to(:controller => "host_family_photos", :action => "destroy", :id => "1")
    end

  end
end
