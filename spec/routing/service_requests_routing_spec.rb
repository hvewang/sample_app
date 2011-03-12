require "spec_helper"

describe ServiceRequestsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/service_requests" }.should route_to(:controller => "service_requests", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/service_requests/new" }.should route_to(:controller => "service_requests", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/service_requests/1" }.should route_to(:controller => "service_requests", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/service_requests/1/edit" }.should route_to(:controller => "service_requests", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/service_requests" }.should route_to(:controller => "service_requests", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/service_requests/1" }.should route_to(:controller => "service_requests", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/service_requests/1" }.should route_to(:controller => "service_requests", :action => "destroy", :id => "1")
    end

  end
end
