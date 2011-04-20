require "spec_helper"

describe SuccessCasesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/success_cases" }.should route_to(:controller => "success_cases", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/success_cases/new" }.should route_to(:controller => "success_cases", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/success_cases/1" }.should route_to(:controller => "success_cases", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/success_cases/1/edit" }.should route_to(:controller => "success_cases", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/success_cases" }.should route_to(:controller => "success_cases", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/success_cases/1" }.should route_to(:controller => "success_cases", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/success_cases/1" }.should route_to(:controller => "success_cases", :action => "destroy", :id => "1")
    end

  end
end
