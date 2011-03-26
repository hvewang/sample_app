require "spec_helper"

describe CollegeRankingsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/college_rankings" }.should route_to(:controller => "college_rankings", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/college_rankings/new" }.should route_to(:controller => "college_rankings", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/college_rankings/1" }.should route_to(:controller => "college_rankings", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/college_rankings/1/edit" }.should route_to(:controller => "college_rankings", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/college_rankings" }.should route_to(:controller => "college_rankings", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/college_rankings/1" }.should route_to(:controller => "college_rankings", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/college_rankings/1" }.should route_to(:controller => "college_rankings", :action => "destroy", :id => "1")
    end

  end
end
