require "spec_helper"

describe GraduateSchoolRankingsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/graduate_school_rankings" }.should route_to(:controller => "graduate_school_rankings", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/graduate_school_rankings/new" }.should route_to(:controller => "graduate_school_rankings", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/graduate_school_rankings/1" }.should route_to(:controller => "graduate_school_rankings", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/graduate_school_rankings/1/edit" }.should route_to(:controller => "graduate_school_rankings", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/graduate_school_rankings" }.should route_to(:controller => "graduate_school_rankings", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/graduate_school_rankings/1" }.should route_to(:controller => "graduate_school_rankings", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/graduate_school_rankings/1" }.should route_to(:controller => "graduate_school_rankings", :action => "destroy", :id => "1")
    end

  end
end
