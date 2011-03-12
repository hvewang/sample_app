require 'spec_helper'

describe "service_requests/edit.html.erb" do
  before(:each) do
    @service_request = assign(:service_request, stub_model(ServiceRequest,
      :student_name => "MyString",
      :year_of_birth => "MyString",
      :gender => "MyString",
      :parent_name => "MyString",
      :relationship => "MyString",
      :street => "MyString",
      :city => "MyString",
      :country => "MyString",
      :nationality => "MyString",
      :cell_phone => "MyString",
      :home_phone => "MyString",
      :email => "MyString",
      :service_grade => "MyString",
      :service_type => "MyString",
      :service_city => "MyString",
      :service_state => "MyString",
      :service_detail => "MyText",
      :way_to_know_nh => "MyString",
      :comments => "MyText",
      :status => "MyString",
      :updated_by => 1
    ))
  end

  it "renders the edit service_request form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => service_request_path(@service_request), :method => "post" do
      assert_select "input#service_request_student_name", :name => "service_request[student_name]"
      assert_select "input#service_request_year_of_birth", :name => "service_request[year_of_birth]"
      assert_select "input#service_request_gender", :name => "service_request[gender]"
      assert_select "input#service_request_parent_name", :name => "service_request[parent_name]"
      assert_select "input#service_request_relationship", :name => "service_request[relationship]"
      assert_select "input#service_request_street", :name => "service_request[street]"
      assert_select "input#service_request_city", :name => "service_request[city]"
      assert_select "input#service_request_country", :name => "service_request[country]"
      assert_select "input#service_request_nationality", :name => "service_request[nationality]"
      assert_select "input#service_request_cell_phone", :name => "service_request[cell_phone]"
      assert_select "input#service_request_home_phone", :name => "service_request[home_phone]"
      assert_select "input#service_request_email", :name => "service_request[email]"
      assert_select "input#service_request_service_grade", :name => "service_request[service_grade]"
      assert_select "input#service_request_service_type", :name => "service_request[service_type]"
      assert_select "input#service_request_service_city", :name => "service_request[service_city]"
      assert_select "input#service_request_service_state", :name => "service_request[service_state]"
      assert_select "textarea#service_request_service_detail", :name => "service_request[service_detail]"
      assert_select "input#service_request_way_to_know_nh", :name => "service_request[way_to_know_nh]"
      assert_select "textarea#service_request_comments", :name => "service_request[comments]"
      assert_select "input#service_request_status", :name => "service_request[status]"
      assert_select "input#service_request_updated_by", :name => "service_request[updated_by]"
    end
  end
end
