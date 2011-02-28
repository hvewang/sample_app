require 'spec_helper'

describe TestimonialsController do

  describe "GET 'parent'" do
    it "should be successful" do
      get 'parent'
      response.should be_success
    end
  end

  describe "GET 'student'" do
    it "should be successful" do
      get 'student'
      response.should be_success
    end
  end

  describe "GET 'hostfamily'" do
    it "should be successful" do
      get 'hostfamily'
      response.should be_success
    end
  end

end
