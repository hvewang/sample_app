require 'spec_helper'

describe "college_lists/new.html.erb" do
  before(:each) do
    assign(:college_list, stub_model(CollegeList,
      :name_en => "MyString",
      :name_cn => "MyString",
      :address => "MyString",
      :website => "MyString",
      :school_type => "MyString",
      :founded => "MyString",
      :total_student => "MyString",
      :enrollment => "MyString",
      :acceptance_rate => "MyString",
      :teacher_student_ratio => "MyString",
      :i18n_student_info => "MyText",
      :sat_score => "MyString",
      :ranking => "MyText",
      :tuition_fee => "MyText",
      :financial_aid => "MyText",
      :about_school => "MyText",
      :academic_calendar => "MyString",
      :popular_major => "MyText",
      :special_feature => "MyText",
      :degree => "MyText",
      :contact_info => "MyText",
      :setting => "MyString",
      :pics => "MyString",
      :application_deadline => "MyText",
      :applciation_fee => "MyString",
      :application_method => "MyString",
      :application_form => "MyString",
      :application_material => "MyText",
      :application_mustknow => "MyText",
      :double_admission => "MyString",
      :lang_requirement => "MyText",
      :d_lang_requirement => "MyText",
      :recommendation_form => "",
      :financial_form => "MyString",
      :admission_requirement => "MyText",
      :mail_test_score => "MyString",
      :airport_help => "MyString",
      :boardidng => "MyString",
      :notice => "MyText",
      :remark => "MyText",
      :status => "MyString"
    ).as_new_record)
  end

  it "renders new college_list form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => college_lists_path, :method => "post" do
      assert_select "input#college_list_name_en", :name => "college_list[name_en]"
      assert_select "input#college_list_name_cn", :name => "college_list[name_cn]"
      assert_select "input#college_list_address", :name => "college_list[address]"
      assert_select "input#college_list_website", :name => "college_list[website]"
      assert_select "input#college_list_school_type", :name => "college_list[school_type]"
      assert_select "input#college_list_founded", :name => "college_list[founded]"
      assert_select "input#college_list_total_student", :name => "college_list[total_student]"
      assert_select "input#college_list_enrollment", :name => "college_list[enrollment]"
      assert_select "input#college_list_acceptance_rate", :name => "college_list[acceptance_rate]"
      assert_select "input#college_list_teacher_student_ratio", :name => "college_list[teacher_student_ratio]"
      assert_select "textarea#college_list_i18n_student_info", :name => "college_list[i18n_student_info]"
      assert_select "input#college_list_sat_score", :name => "college_list[sat_score]"
      assert_select "textarea#college_list_ranking", :name => "college_list[ranking]"
      assert_select "textarea#college_list_tuition_fee", :name => "college_list[tuition_fee]"
      assert_select "textarea#college_list_financial_aid", :name => "college_list[financial_aid]"
      assert_select "textarea#college_list_about_school", :name => "college_list[about_school]"
      assert_select "input#college_list_academic_calendar", :name => "college_list[academic_calendar]"
      assert_select "textarea#college_list_popular_major", :name => "college_list[popular_major]"
      assert_select "textarea#college_list_special_feature", :name => "college_list[special_feature]"
      assert_select "textarea#college_list_degree", :name => "college_list[degree]"
      assert_select "textarea#college_list_contact_info", :name => "college_list[contact_info]"
      assert_select "input#college_list_setting", :name => "college_list[setting]"
      assert_select "input#college_list_pics", :name => "college_list[pics]"
      assert_select "textarea#college_list_application_deadline", :name => "college_list[application_deadline]"
      assert_select "input#college_list_applciation_fee", :name => "college_list[applciation_fee]"
      assert_select "input#college_list_application_method", :name => "college_list[application_method]"
      assert_select "input#college_list_application_form", :name => "college_list[application_form]"
      assert_select "textarea#college_list_application_material", :name => "college_list[application_material]"
      assert_select "textarea#college_list_application_mustknow", :name => "college_list[application_mustknow]"
      assert_select "input#college_list_double_admission", :name => "college_list[double_admission]"
      assert_select "textarea#college_list_lang_requirement", :name => "college_list[lang_requirement]"
      assert_select "textarea#college_list_d_lang_requirement", :name => "college_list[d_lang_requirement]"
      assert_select "input#college_list_recommendation_form", :name => "college_list[recommendation_form]"
      assert_select "input#college_list_financial_form", :name => "college_list[financial_form]"
      assert_select "textarea#college_list_admission_requirement", :name => "college_list[admission_requirement]"
      assert_select "input#college_list_mail_test_score", :name => "college_list[mail_test_score]"
      assert_select "input#college_list_airport_help", :name => "college_list[airport_help]"
      assert_select "input#college_list_boardidng", :name => "college_list[boardidng]"
      assert_select "textarea#college_list_notice", :name => "college_list[notice]"
      assert_select "textarea#college_list_remark", :name => "college_list[remark]"
      assert_select "input#college_list_status", :name => "college_list[status]"
    end
  end
end
