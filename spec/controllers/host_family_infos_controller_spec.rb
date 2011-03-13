require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe HostFamilyInfosController do

  def mock_host_family_info(stubs={})
    @mock_host_family_info ||= mock_model(HostFamilyInfo, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all host_family_infos as @host_family_infos" do
      HostFamilyInfo.stub(:all) { [mock_host_family_info] }
      get :index
      assigns(:host_family_infos).should eq([mock_host_family_info])
    end
  end

  describe "GET show" do
    it "assigns the requested host_family_info as @host_family_info" do
      HostFamilyInfo.stub(:find).with("37") { mock_host_family_info }
      get :show, :id => "37"
      assigns(:host_family_info).should be(mock_host_family_info)
    end
  end

  describe "GET new" do
    it "assigns a new host_family_info as @host_family_info" do
      HostFamilyInfo.stub(:new) { mock_host_family_info }
      get :new
      assigns(:host_family_info).should be(mock_host_family_info)
    end
  end

  describe "GET edit" do
    it "assigns the requested host_family_info as @host_family_info" do
      HostFamilyInfo.stub(:find).with("37") { mock_host_family_info }
      get :edit, :id => "37"
      assigns(:host_family_info).should be(mock_host_family_info)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created host_family_info as @host_family_info" do
        HostFamilyInfo.stub(:new).with({'these' => 'params'}) { mock_host_family_info(:save => true) }
        post :create, :host_family_info => {'these' => 'params'}
        assigns(:host_family_info).should be(mock_host_family_info)
      end

      it "redirects to the created host_family_info" do
        HostFamilyInfo.stub(:new) { mock_host_family_info(:save => true) }
        post :create, :host_family_info => {}
        response.should redirect_to(host_family_info_url(mock_host_family_info))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved host_family_info as @host_family_info" do
        HostFamilyInfo.stub(:new).with({'these' => 'params'}) { mock_host_family_info(:save => false) }
        post :create, :host_family_info => {'these' => 'params'}
        assigns(:host_family_info).should be(mock_host_family_info)
      end

      it "re-renders the 'new' template" do
        HostFamilyInfo.stub(:new) { mock_host_family_info(:save => false) }
        post :create, :host_family_info => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested host_family_info" do
        HostFamilyInfo.stub(:find).with("37") { mock_host_family_info }
        mock_host_family_info.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :host_family_info => {'these' => 'params'}
      end

      it "assigns the requested host_family_info as @host_family_info" do
        HostFamilyInfo.stub(:find) { mock_host_family_info(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:host_family_info).should be(mock_host_family_info)
      end

      it "redirects to the host_family_info" do
        HostFamilyInfo.stub(:find) { mock_host_family_info(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(host_family_info_url(mock_host_family_info))
      end
    end

    describe "with invalid params" do
      it "assigns the host_family_info as @host_family_info" do
        HostFamilyInfo.stub(:find) { mock_host_family_info(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:host_family_info).should be(mock_host_family_info)
      end

      it "re-renders the 'edit' template" do
        HostFamilyInfo.stub(:find) { mock_host_family_info(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested host_family_info" do
      HostFamilyInfo.stub(:find).with("37") { mock_host_family_info }
      mock_host_family_info.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the host_family_infos list" do
      HostFamilyInfo.stub(:find) { mock_host_family_info }
      delete :destroy, :id => "1"
      response.should redirect_to(host_family_infos_url)
    end
  end

end
