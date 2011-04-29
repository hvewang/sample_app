require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe NewhopeTeamsController do

  def mock_newhope_team(stubs={})
    @mock_newhope_team ||= mock_model(NewhopeTeam, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all newhope_teams as @newhope_teams" do
      NewhopeTeam.stub(:all) { [mock_newhope_team] }
      get :index
      assigns(:newhope_teams).should eq([mock_newhope_team])
    end
  end

  describe "GET show" do
    it "assigns the requested newhope_team as @newhope_team" do
      NewhopeTeam.stub(:find).with("37") { mock_newhope_team }
      get :show, :id => "37"
      assigns(:newhope_team).should be(mock_newhope_team)
    end
  end

  describe "GET new" do
    it "assigns a new newhope_team as @newhope_team" do
      NewhopeTeam.stub(:new) { mock_newhope_team }
      get :new
      assigns(:newhope_team).should be(mock_newhope_team)
    end
  end

  describe "GET edit" do
    it "assigns the requested newhope_team as @newhope_team" do
      NewhopeTeam.stub(:find).with("37") { mock_newhope_team }
      get :edit, :id => "37"
      assigns(:newhope_team).should be(mock_newhope_team)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created newhope_team as @newhope_team" do
        NewhopeTeam.stub(:new).with({'these' => 'params'}) { mock_newhope_team(:save => true) }
        post :create, :newhope_team => {'these' => 'params'}
        assigns(:newhope_team).should be(mock_newhope_team)
      end

      it "redirects to the created newhope_team" do
        NewhopeTeam.stub(:new) { mock_newhope_team(:save => true) }
        post :create, :newhope_team => {}
        response.should redirect_to(newhope_team_url(mock_newhope_team))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved newhope_team as @newhope_team" do
        NewhopeTeam.stub(:new).with({'these' => 'params'}) { mock_newhope_team(:save => false) }
        post :create, :newhope_team => {'these' => 'params'}
        assigns(:newhope_team).should be(mock_newhope_team)
      end

      it "re-renders the 'new' template" do
        NewhopeTeam.stub(:new) { mock_newhope_team(:save => false) }
        post :create, :newhope_team => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested newhope_team" do
        NewhopeTeam.stub(:find).with("37") { mock_newhope_team }
        mock_newhope_team.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :newhope_team => {'these' => 'params'}
      end

      it "assigns the requested newhope_team as @newhope_team" do
        NewhopeTeam.stub(:find) { mock_newhope_team(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:newhope_team).should be(mock_newhope_team)
      end

      it "redirects to the newhope_team" do
        NewhopeTeam.stub(:find) { mock_newhope_team(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(newhope_team_url(mock_newhope_team))
      end
    end

    describe "with invalid params" do
      it "assigns the newhope_team as @newhope_team" do
        NewhopeTeam.stub(:find) { mock_newhope_team(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:newhope_team).should be(mock_newhope_team)
      end

      it "re-renders the 'edit' template" do
        NewhopeTeam.stub(:find) { mock_newhope_team(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested newhope_team" do
      NewhopeTeam.stub(:find).with("37") { mock_newhope_team }
      mock_newhope_team.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the newhope_teams list" do
      NewhopeTeam.stub(:find) { mock_newhope_team }
      delete :destroy, :id => "1"
      response.should redirect_to(newhope_teams_url)
    end
  end

end
