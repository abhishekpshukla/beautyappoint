require 'rails_helper'

RSpec.describe "salons/edit", type: :view do
  before(:each) do
    @salon = assign(:salon, Salon.create!(
      :name => "MyString",
      :description => "MyText",
      :lunch_hour => "MyString"
    ))
  end

  it "renders the edit salon form" do
    render

    assert_select "form[action=?][method=?]", salon_path(@salon), "post" do

      assert_select "input#salon_name[name=?]", "salon[name]"

      assert_select "textarea#salon_description[name=?]", "salon[description]"

      assert_select "input#salon_lunch_hour[name=?]", "salon[lunch_hour]"
    end
  end
end
