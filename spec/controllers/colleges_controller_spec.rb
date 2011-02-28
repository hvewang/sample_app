require 'spec_helper'

describe CollegesController do

  describe "GET 'bachelor'" do
    it "should be successful" do
      get 'bachelor'
      response.should be_success
    end
  end

  describe "GET 'msphd'" do
    it "should be successful" do
      get 'msphd'
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
