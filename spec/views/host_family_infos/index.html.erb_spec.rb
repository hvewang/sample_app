require 'spec_helper'

describe "host_family_infos/index.html.erb" do
  before(:each) do
    assign(:host_family_infos, [
      stub_model(HostFamilyInfo,
        :f_nm => "F Nm",
        :l_nm => "L Nm",
        :sex => "Sex",
        :street => "Street",
        :city => "City",
        :state => "State",
        :zip => "Zip",
        :homephone => "Homephone",
        :cellphone => "Cellphone",
        :email => "Email",
        :ethnicity => "Ethnicity",
        :legal_status => "Legal Status",
        :education => "Education",
        :religion => "Religion",
        :occupation => "Occupation",
        :english_level => "English Level",
        :primary_language => "Primary Language",
        :second_language => "Second Language",
        :homestay_experience => "Homestay Experience",
        :student_sex => "Student Sex",
        :student_group => "Student Group",
        :marrital_status => "Marrital Status",
        :s_f_nm => "S F Nm",
        :s_l_nm => "S L Nm",
        :s_sex => "S Sex",
        :s_ethnicity => "S Ethnicity",
        :s_legal_status => "S Legal Status",
        :s_education => "S Education",
        :s_final_school => "S Final School",
        :final_school => "Final School",
        :s_religion => "S Religion",
        :s_occupation => "S Occupation",
        :s_english_level => "S English Level",
        :s_primary_language => "S Primary Language",
        :s_second_language => "S Second Language",
        :number_of_kids => "Number Of Kids",
        :kids_detail => "MyText",
        :house_ownership => "House Ownership",
        :house_type => "House Type",
        :num_of_bedroom => "Num Of Bedroom",
        :num_of_bathroom => "Num Of Bathroom",
        :num_of_car => "Num Of Car",
        :num_of_pet => "Num Of Pet",
        :pet_detail => "MyText",
        :avail_room => "Avail Room",
        :ride_avail => "Ride Avail",
        :comment => "MyText",
        :way_to_know_nh => "Way To Know Nh",
        :ind_confirm => "Ind Confirm"
      ),
      stub_model(HostFamilyInfo,
        :f_nm => "F Nm",
        :l_nm => "L Nm",
        :sex => "Sex",
        :street => "Street",
        :city => "City",
        :state => "State",
        :zip => "Zip",
        :homephone => "Homephone",
        :cellphone => "Cellphone",
        :email => "Email",
        :ethnicity => "Ethnicity",
        :legal_status => "Legal Status",
        :education => "Education",
        :religion => "Religion",
        :occupation => "Occupation",
        :english_level => "English Level",
        :primary_language => "Primary Language",
        :second_language => "Second Language",
        :homestay_experience => "Homestay Experience",
        :student_sex => "Student Sex",
        :student_group => "Student Group",
        :marrital_status => "Marrital Status",
        :s_f_nm => "S F Nm",
        :s_l_nm => "S L Nm",
        :s_sex => "S Sex",
        :s_ethnicity => "S Ethnicity",
        :s_legal_status => "S Legal Status",
        :s_education => "S Education",
        :s_final_school => "S Final School",
        :final_school => "Final School",
        :s_religion => "S Religion",
        :s_occupation => "S Occupation",
        :s_english_level => "S English Level",
        :s_primary_language => "S Primary Language",
        :s_second_language => "S Second Language",
        :number_of_kids => "Number Of Kids",
        :kids_detail => "MyText",
        :house_ownership => "House Ownership",
        :house_type => "House Type",
        :num_of_bedroom => "Num Of Bedroom",
        :num_of_bathroom => "Num Of Bathroom",
        :num_of_car => "Num Of Car",
        :num_of_pet => "Num Of Pet",
        :pet_detail => "MyText",
        :avail_room => "Avail Room",
        :ride_avail => "Ride Avail",
        :comment => "MyText",
        :way_to_know_nh => "Way To Know Nh",
        :ind_confirm => "Ind Confirm"
      )
    ])
  end

  it "renders a list of host_family_infos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "F Nm".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "L Nm".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Sex".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Street".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "City".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "State".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Zip".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Homephone".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Cellphone".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Ethnicity".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Legal Status".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Education".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Religion".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Occupation".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "English Level".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Primary Language".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Second Language".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Homestay Experience".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Student Sex".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Student Group".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Marrital Status".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "S F Nm".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "S L Nm".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "S Sex".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "S Ethnicity".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "S Legal Status".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "S Education".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "S Final School".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Final School".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "S Religion".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "S Occupation".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "S English Level".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "S Primary Language".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "S Second Language".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Number Of Kids".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "House Ownership".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "House Type".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Num Of Bedroom".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Num Of Bathroom".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Num Of Car".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Num Of Pet".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Avail Room".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Ride Avail".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Way To Know Nh".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Ind Confirm".to_s, :count => 2
  end
end
