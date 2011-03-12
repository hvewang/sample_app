require 'spec_helper'

describe "service_requests/show.html.erb" do
  before(:each) do
    @service_request = assign(:service_request, stub_model(ServiceRequest,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Student Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Year Of Birth/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Gender/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Parent Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Relationship/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Street/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/City/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Country/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nationality/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Cell Phone/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Home Phone/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Email/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Service Grade/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Service Type/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Service City/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Service State/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Way To Know Nh/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Status/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
