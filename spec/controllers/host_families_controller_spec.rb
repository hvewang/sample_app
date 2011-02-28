require 'spec_helper'

describe HostFamiliesController do

  describe "GET 'qualification'" do
    it "should be successful" do
      get 'qualification'
      response.should be_success
    end
  end

  describe "GET 'applicationform'" do
    it "should be successful" do
      get 'applicationform'
      response.should be_success
    end
  end

  describe "GET 'whynewhope'" do
    it "should be successful" do
      get 'whynewhope'
      response.should be_success
    end
  end

  describe "GET 'whatishomestay'" do
    it "should be successful" do
      get 'whatishomestay'
      response.should be_success
    end
  end

  describe "GET 'faq'" do
    it "should be successful" do
      get 'faq'
      response.should be_success
    end
  end

  describe "GET 'homestayphoto'" do
    it "should be successful" do
      get 'homestayphoto'
      response.should be_success
    end
  end

  describe "GET 'schoolapplicationprocedure'" do
    it "should be successful" do
      get 'schoolapplicationprocedure'
      response.should be_success
    end
  end

  describe "GET 'participatingschool'" do
    it "should be successful" do
      get 'participatingschool'
      response.should be_success
    end
  end

  describe "GET 'additionalservice'" do
    it "should be successful" do
      get 'additionalservice'
      response.should be_success
    end
  end

  describe "GET 'servicerequestform'" do
    it "should be successful" do
      get 'servicerequestform'
      response.should be_success
    end
  end

  describe "GET 'availablehomestay'" do
    it "should be successful" do
      get 'availablehomestay'
      response.should be_success
    end
  end

end
