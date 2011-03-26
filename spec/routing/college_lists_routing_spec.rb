require "spec_helper"

describe CollegeListsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/college_lists" }.should route_to(:controller => "college_lists", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/college_lists/new" }.should route_to(:controller => "college_lists", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/college_lists/1" }.should route_to(:controller => "college_lists", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/college_lists/1/edit" }.should route_to(:controller => "college_lists", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/college_lists" }.should route_to(:controller => "college_lists", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/college_lists/1" }.should route_to(:controller => "college_lists", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/college_lists/1" }.should route_to(:controller => "college_lists", :action => "destroy", :id => "1")
    end

  end
end
