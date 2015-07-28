require 'rails_helper'

RSpec.describe "salons/show", type: :view do
  before(:each) do
    @salon = assign(:salon, Salon.create!(
      :name => "Name",
      :description => "MyText",
      :lunch_hour => "Lunch Hour"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Lunch Hour/)
  end
end
