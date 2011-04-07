require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe CollegeRankingsController do

  def mock_college_ranking(stubs={})
    @mock_college_ranking ||= mock_model(CollegeRanking, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all college_rankings as @college_rankings" do
      CollegeRanking.stub(:all) { [mock_college_ranking] }
      get :index
      assigns(:college_rankings).should eq([mock_college_ranking])
    end
  end

  describe "GET show" do
    it "assigns the requested college_ranking as @college_ranking" do
      CollegeRanking.stub(:find).with("37") { mock_college_ranking }
      get :show, :id => "37"
      assigns(:college_ranking).should be(mock_college_ranking)
    end
  end

  describe "GET new" do
    it "assigns a new college_ranking as @college_ranking" do
      CollegeRanking.stub(:new) { mock_college_ranking }
      get :new
      assigns(:college_ranking).should be(mock_college_ranking)
    end
  end

  describe "GET edit" do
    it "assigns the requested college_ranking as @college_ranking" do
      CollegeRanking.stub(:find).with("37") { mock_college_ranking }
      get :edit, :id => "37"
      assigns(:college_ranking).should be(mock_college_ranking)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created college_ranking as @college_ranking" do
        CollegeRanking.stub(:new).with({'these' => 'params'}) { mock_college_ranking(:save => true) }
        post :create, :college_ranking => {'these' => 'params'}
        assigns(:college_ranking).should be(mock_college_ranking)
      end

      it "redirects to the created college_ranking" do
        CollegeRanking.stub(:new) { mock_college_ranking(:save => true) }
        post :create, :college_ranking => {}
        response.should redirect_to(college_ranking_url(mock_college_ranking))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved college_ranking as @college_ranking" do
        CollegeRanking.stub(:new).with({'these' => 'params'}) { mock_college_ranking(:save => false) }
        post :create, :college_ranking => {'these' => 'params'}
        assigns(:college_ranking).should be(mock_college_ranking)
      end

      it "re-renders the 'new' template" do
        CollegeRanking.stub(:new) { mock_college_ranking(:save => false) }
        post :create, :college_ranking => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested college_ranking" do
        CollegeRanking.stub(:find).with("37") { mock_college_ranking }
        mock_college_ranking.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :college_ranking => {'these' => 'params'}
      end

      it "assigns the requested college_ranking as @college_ranking" do
        CollegeRanking.stub(:find) { mock_college_ranking(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:college_ranking).should be(mock_college_ranking)
      end

      it "redirects to the college_ranking" do
        CollegeRanking.stub(:find) { mock_college_ranking(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(college_ranking_url(mock_college_ranking))
      end
    end

    describe "with invalid params" do
      it "assigns the college_ranking as @college_ranking" do
        CollegeRanking.stub(:find) { mock_college_ranking(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:college_ranking).should be(mock_college_ranking)
      end

      it "re-renders the 'edit' template" do
        CollegeRanking.stub(:find) { mock_college_ranking(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested college_ranking" do
      CollegeRanking.stub(:find).with("37") { mock_college_ranking }
      mock_college_ranking.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the college_rankings list" do
      CollegeRanking.stub(:find) { mock_college_ranking }
      delete :destroy, :id => "1"
      response.should redirect_to(college_rankings_url)
    end
  end

end