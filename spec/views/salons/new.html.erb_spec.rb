require 'rails_helper'

RSpec.describe "salons/new", type: :view do
  before(:each) do
    assign(:salon, Salon.new(
      :name => "MyString",
      :description => "MyText",
      :lunch_hour => "MyString"
    ))
  end

  it "renders new salon form" do
    render

    assert_select "form[action=?][method=?]", salons_path, "post" do

      assert_select "input#salon_name[name=?]", "salon[name]"

      assert_select "textarea#salon_description[name=?]", "salon[description]"

      assert_select "input#salon_lunch_hour[name=?]", "salon[lunch_hour]"
    end
  end
end
