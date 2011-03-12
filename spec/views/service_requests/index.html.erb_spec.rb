require 'spec_helper'

describe "service_requests/index.html.erb" do
  before(:each) do
    assign(:service_requests, [
      stub_model(ServiceRequest,
        :student_name => "Student Name",
        :year_of_birth => "Year Of Birth",
        :gender => "Gender",
        :parent_name => "Parent Name",
        :relationship => "Relationship",
        :street => "Street",
        :city => "City",
        :country => "Country",
        :nationality => "Nationality",
        :cell_phone => "Cell Phone",
        :home_phone => "Home Phone",
        :email => "Email",
        :service_grade => "Service Grade",
        :service_type => "Service Type",
        :service_city => "Service City",
        :service_state => "Service State",
        :service_detail => "MyText",
        :way_to_know_nh => "Way To Know Nh",
        :comments => "MyText",
        :status => "Status",
        :updated_by => 1
      ),
      stub_model(ServiceRequest,
        :student_name => "Student Name",
        :year_of_birth => "Year Of Birth",
        :gender => "Gender",
        :parent_name => "Parent Name",
        :relationship => "Relationship",
        :street => "Street",
        :city => "City",
        :country => "Country",
        :nationality => "Nationality",
        :cell_phone => "Cell Phone",
        :home_phone => "Home Phone",
        :email => "Email",
        :service_grade => "Service Grade",
        :service_type => "Service Type",
        :service_city => "Service City",
        :service_state => "Service State",
        :service_detail => "MyText",
        :way_to_know_nh => "Way To Know Nh",
        :comments => "MyText",
        :status => "Status",
        :updated_by => 1
      )
    ])
  end

  it "renders a list of service_requests" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Student Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Year Of Birth".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Gender".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Parent Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Relationship".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Street".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "City".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nationality".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Cell Phone".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Home Phone".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Service Grade".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Service Type".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Service City".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Service State".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Way To Know Nh".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
