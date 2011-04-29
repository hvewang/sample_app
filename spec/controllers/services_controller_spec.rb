require 'spec_helper'

describe ServicesController do

  describe "GET 'general'" do
    it "should be successful" do
      get 'general'
      response.should be_success
    end
  end

  describe "GET 'dayschool'" do
    it "should be successful" do
      get 'dayschool'
      response.should be_success
    end
  end

  describe "GET 'boardingschool'" do
    it "should be successful" do
      get 'boardingschool'
      response.should be_success
    end
  end

  describe "GET 'publicschool'" do
    it "should be successful" do
      get 'publicschool'
      response.should be_success
    end
  end

  describe "GET 'undergraduate'" do
    it "should be successful" do
      get 'undergraduate'
      response.should be_success
    end
  end

  describe "GET 'graduate'" do
    it "should be successful" do
      get 'graduate'
      response.should be_success
    end
  end

  describe "GET 'hostfamily'" do
    it "should be successful" do
      get 'hostfamily'
      response.should be_success
    end
  end

  describe "GET 'hostfamilyapplication'" do
    it "should be successful" do
      get 'hostfamilyapplication'
      response.should be_success
    end
  end

  describe "GET 'docwriting'" do
    it "should be successful" do
      get 'docwriting'
      response.should be_success
    end
  end

  describe "GET 'followup'" do
    it "should be successful" do
      get 'followup'
      response.should be_success
    end
  end

end
