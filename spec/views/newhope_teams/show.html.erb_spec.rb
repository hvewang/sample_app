require 'spec_helper'

describe "newhope_teams/show.html.erb" do
  before(:each) do
    @newhope_team = assign(:newhope_team, stub_model(NewhopeTeam,
      :name_en => "Name En",
      :name_cn => "Name Cn",
      :title_en => "Title En",
      :title_cn => "Title Cn",
      :email => "Email",
      :phone => "Phone",
      :record_type => "Record Type",
      :branch_name_en => "Branch Name En",
      :branch_name_cn => "Branch Name Cn",
      :country_en => "Country En",
      :country_cn => "Country Cn",
      :pic => "Pic",
      :resume => "MyText",
      :sort_order => 1,
      :status => "Status"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name En/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name Cn/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title En/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title Cn/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Email/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Phone/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Record Type/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Branch Name En/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Branch Name Cn/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Country En/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Country Cn/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Pic/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Status/)
  end
end
