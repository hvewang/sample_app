require "spec_helper"

describe StudentHostfamilyPicturesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/student_hostfamily_pictures" }.should route_to(:controller => "student_hostfamily_pictures", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/student_hostfamily_pictures/new" }.should route_to(:controller => "student_hostfamily_pictures", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/student_hostfamily_pictures/1" }.should route_to(:controller => "student_hostfamily_pictures", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/student_hostfamily_pictures/1/edit" }.should route_to(:controller => "student_hostfamily_pictures", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/student_hostfamily_pictures" }.should route_to(:controller => "student_hostfamily_pictures", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/student_hostfamily_pictures/1" }.should route_to(:controller => "student_hostfamily_pictures", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/student_hostfamily_pictures/1" }.should route_to(:controller => "student_hostfamily_pictures", :action => "destroy", :id => "1")
    end

  end
end
