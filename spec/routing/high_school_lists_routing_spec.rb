require "spec_helper"

describe HighSchoolListsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/high_school_lists" }.should route_to(:controller => "high_school_lists", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/high_school_lists/new" }.should route_to(:controller => "high_school_lists", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/high_school_lists/1" }.should route_to(:controller => "high_school_lists", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/high_school_lists/1/edit" }.should route_to(:controller => "high_school_lists", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/high_school_lists" }.should route_to(:controller => "high_school_lists", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/high_school_lists/1" }.should route_to(:controller => "high_school_lists", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/high_school_lists/1" }.should route_to(:controller => "high_school_lists", :action => "destroy", :id => "1")
    end

  end
end
