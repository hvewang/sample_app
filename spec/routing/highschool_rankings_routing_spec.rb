require "spec_helper"

describe HighschoolRankingsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/highschool_rankings" }.should route_to(:controller => "highschool_rankings", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/highschool_rankings/new" }.should route_to(:controller => "highschool_rankings", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/highschool_rankings/1" }.should route_to(:controller => "highschool_rankings", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/highschool_rankings/1/edit" }.should route_to(:controller => "highschool_rankings", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/highschool_rankings" }.should route_to(:controller => "highschool_rankings", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/highschool_rankings/1" }.should route_to(:controller => "highschool_rankings", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/highschool_rankings/1" }.should route_to(:controller => "highschool_rankings", :action => "destroy", :id => "1")
    end

  end
end
