require "spec_helper"

describe NewsUpdatesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/news_updates" }.should route_to(:controller => "news_updates", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/news_updates/new" }.should route_to(:controller => "news_updates", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/news_updates/1" }.should route_to(:controller => "news_updates", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/news_updates/1/edit" }.should route_to(:controller => "news_updates", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/news_updates" }.should route_to(:controller => "news_updates", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/news_updates/1" }.should route_to(:controller => "news_updates", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/news_updates/1" }.should route_to(:controller => "news_updates", :action => "destroy", :id => "1")
    end

  end
end
