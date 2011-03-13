require 'spec_helper'

describe "host_family_infos/show.html.erb" do
  before(:each) do
    @host_family_info = assign(:host_family_info, stub_model(HostFamilyInfo,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/F Nm/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/L Nm/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Sex/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Street/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/City/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/State/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Zip/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Homephone/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Cellphone/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Email/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Ethnicity/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Legal Status/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Education/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Religion/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Occupation/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/English Level/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Primary Language/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Second Language/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Homestay Experience/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Student Sex/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Student Group/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Marrital Status/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/S F Nm/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/S L Nm/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/S Sex/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/S Ethnicity/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/S Legal Status/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/S Education/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/S Final School/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Final School/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/S Religion/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/S Occupation/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/S English Level/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/S Primary Language/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/S Second Language/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Number Of Kids/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/House Ownership/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/House Type/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Num Of Bedroom/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Num Of Bathroom/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Num Of Car/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Num Of Pet/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Avail Room/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Ride Avail/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Way To Know Nh/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Ind Confirm/)
  end
end
