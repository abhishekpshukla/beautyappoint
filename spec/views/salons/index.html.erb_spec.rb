require 'rails_helper'

RSpec.describe "salons/index", type: :view do
  before(:each) do
    assign(:salons, [
      Salon.create!(
        :name => "Name",
        :description => "MyText",
        :lunch_hour => "Lunch Hour"
      ),
      Salon.create!(
        :name => "Name",
        :description => "MyText",
        :lunch_hour => "Lunch Hour"
      )
    ])
  end

  it "renders a list of salons" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Lunch Hour".to_s, :count => 2
  end
end
