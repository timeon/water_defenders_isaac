require 'rails_helper'

RSpec.describe "trackings/show", type: :view do
  before(:each) do
    @tracking = assign(:tracking, Tracking.create!(
      :name => "Name",
      :value => 2,
      :units => "Units",
      :catogory => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Units/)
    expect(rendered).to match(//)
  end
end
