require "spec_helper"

describe NewhopeTeamsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/newhope_teams" }.should route_to(:controller => "newhope_teams", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/newhope_teams/new" }.should route_to(:controller => "newhope_teams", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/newhope_teams/1" }.should route_to(:controller => "newhope_teams", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/newhope_teams/1/edit" }.should route_to(:controller => "newhope_teams", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/newhope_teams" }.should route_to(:controller => "newhope_teams", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/newhope_teams/1" }.should route_to(:controller => "newhope_teams", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/newhope_teams/1" }.should route_to(:controller => "newhope_teams", :action => "destroy", :id => "1")
    end

  end
end
