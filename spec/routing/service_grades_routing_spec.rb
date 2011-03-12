require "spec_helper"

describe ServiceGradesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/service_grades" }.should route_to(:controller => "service_grades", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/service_grades/new" }.should route_to(:controller => "service_grades", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/service_grades/1" }.should route_to(:controller => "service_grades", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/service_grades/1/edit" }.should route_to(:controller => "service_grades", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/service_grades" }.should route_to(:controller => "service_grades", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/service_grades/1" }.should route_to(:controller => "service_grades", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/service_grades/1" }.should route_to(:controller => "service_grades", :action => "destroy", :id => "1")
    end

  end
end
