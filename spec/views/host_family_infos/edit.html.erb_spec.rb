require 'spec_helper'

describe "host_family_infos/edit.html.erb" do
  before(:each) do
    @host_family_info = assign(:host_family_info, stub_model(HostFamilyInfo,
      :f_nm => "MyString",
      :l_nm => "MyString",
      :sex => "MyString",
      :street => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zip => "MyString",
      :homephone => "MyString",
      :cellphone => "MyString",
      :email => "MyString",
      :ethnicity => "MyString",
      :legal_status => "MyString",
      :education => "MyString",
      :religion => "MyString",
      :occupation => "MyString",
      :english_level => "MyString",
      :primary_language => "MyString",
      :second_language => "MyString",
      :homestay_experience => "MyString",
      :student_sex => "MyString",
      :student_group => "MyString",
      :marrital_status => "MyString",
      :s_f_nm => "MyString",
      :s_l_nm => "MyString",
      :s_sex => "MyString",
      :s_ethnicity => "MyString",
      :s_legal_status => "MyString",
      :s_education => "MyString",
      :s_final_school => "MyString",
      :final_school => "MyString",
      :s_religion => "MyString",
      :s_occupation => "MyString",
      :s_english_level => "MyString",
      :s_primary_language => "MyString",
      :s_second_language => "MyString",
      :number_of_kids => "MyString",
      :kids_detail => "MyText",
      :house_ownership => "MyString",
      :house_type => "MyString",
      :num_of_bedroom => "MyString",
      :num_of_bathroom => "MyString",
      :num_of_car => "MyString",
      :num_of_pet => "MyString",
      :pet_detail => "MyText",
      :avail_room => "MyString",
      :ride_avail => "MyString",
      :comment => "MyText",
      :way_to_know_nh => "MyString",
      :ind_confirm => "MyString"
    ))
  end

  it "renders the edit host_family_info form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => host_family_info_path(@host_family_info), :method => "post" do
      assert_select "input#host_family_info_f_nm", :name => "host_family_info[f_nm]"
      assert_select "input#host_family_info_l_nm", :name => "host_family_info[l_nm]"
      assert_select "input#host_family_info_sex", :name => "host_family_info[sex]"
      assert_select "input#host_family_info_street", :name => "host_family_info[street]"
      assert_select "input#host_family_info_city", :name => "host_family_info[city]"
      assert_select "input#host_family_info_state", :name => "host_family_info[state]"
      assert_select "input#host_family_info_zip", :name => "host_family_info[zip]"
      assert_select "input#host_family_info_homephone", :name => "host_family_info[homephone]"
      assert_select "input#host_family_info_cellphone", :name => "host_family_info[cellphone]"
      assert_select "input#host_family_info_email", :name => "host_family_info[email]"
      assert_select "input#host_family_info_ethnicity", :name => "host_family_info[ethnicity]"
      assert_select "input#host_family_info_legal_status", :name => "host_family_info[legal_status]"
      assert_select "input#host_family_info_education", :name => "host_family_info[education]"
      assert_select "input#host_family_info_religion", :name => "host_family_info[religion]"
      assert_select "input#host_family_info_occupation", :name => "host_family_info[occupation]"
      assert_select "input#host_family_info_english_level", :name => "host_family_info[english_level]"
      assert_select "input#host_family_info_primary_language", :name => "host_family_info[primary_language]"
      assert_select "input#host_family_info_second_language", :name => "host_family_info[second_language]"
      assert_select "input#host_family_info_homestay_experience", :name => "host_family_info[homestay_experience]"
      assert_select "input#host_family_info_student_sex", :name => "host_family_info[student_sex]"
      assert_select "input#host_family_info_student_group", :name => "host_family_info[student_group]"
      assert_select "input#host_family_info_marrital_status", :name => "host_family_info[marrital_status]"
      assert_select "input#host_family_info_s_f_nm", :name => "host_family_info[s_f_nm]"
      assert_select "input#host_family_info_s_l_nm", :name => "host_family_info[s_l_nm]"
      assert_select "input#host_family_info_s_sex", :name => "host_family_info[s_sex]"
      assert_select "input#host_family_info_s_ethnicity", :name => "host_family_info[s_ethnicity]"
      assert_select "input#host_family_info_s_legal_status", :name => "host_family_info[s_legal_status]"
      assert_select "input#host_family_info_s_education", :name => "host_family_info[s_education]"
      assert_select "input#host_family_info_s_final_school", :name => "host_family_info[s_final_school]"
      assert_select "input#host_family_info_final_school", :name => "host_family_info[final_school]"
      assert_select "input#host_family_info_s_religion", :name => "host_family_info[s_religion]"
      assert_select "input#host_family_info_s_occupation", :name => "host_family_info[s_occupation]"
      assert_select "input#host_family_info_s_english_level", :name => "host_family_info[s_english_level]"
      assert_select "input#host_family_info_s_primary_language", :name => "host_family_info[s_primary_language]"
      assert_select "input#host_family_info_s_second_language", :name => "host_family_info[s_second_language]"
      assert_select "input#host_family_info_number_of_kids", :name => "host_family_info[number_of_kids]"
      assert_select "textarea#host_family_info_kids_detail", :name => "host_family_info[kids_detail]"
      assert_select "input#host_family_info_house_ownership", :name => "host_family_info[house_ownership]"
      assert_select "input#host_family_info_house_type", :name => "host_family_info[house_type]"
      assert_select "input#host_family_info_num_of_bedroom", :name => "host_family_info[num_of_bedroom]"
      assert_select "input#host_family_info_num_of_bathroom", :name => "host_family_info[num_of_bathroom]"
      assert_select "input#host_family_info_num_of_car", :name => "host_family_info[num_of_car]"
      assert_select "input#host_family_info_num_of_pet", :name => "host_family_info[num_of_pet]"
      assert_select "textarea#host_family_info_pet_detail", :name => "host_family_info[pet_detail]"
      assert_select "input#host_family_info_avail_room", :name => "host_family_info[avail_room]"
      assert_select "input#host_family_info_ride_avail", :name => "host_family_info[ride_avail]"
      assert_select "textarea#host_family_info_comment", :name => "host_family_info[comment]"
      assert_select "input#host_family_info_way_to_know_nh", :name => "host_family_info[way_to_know_nh]"
      assert_select "input#host_family_info_ind_confirm", :name => "host_family_info[ind_confirm]"
    end
  end
end
