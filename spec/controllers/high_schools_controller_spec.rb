require 'spec_helper'

describe HighSchoolsController do

  describe "GET 'privateday'" do
    it "should be successful" do
      get 'privateday'
      response.should be_success
    end
  end

  describe "GET 'privateboarding'" do
    it "should be successful" do
      get 'privateboarding'
      response.should be_success
    end
  end

  describe "GET 'public'" do
    it "should be successful" do
      get 'public'
      response.should be_success
    end
  end

  describe "GET 'rank'" do
    it "should be successful" do
      get 'rank'
      response.should be_success
    end
  end

end
