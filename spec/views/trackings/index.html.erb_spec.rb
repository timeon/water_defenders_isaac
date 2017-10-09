require 'rails_helper'

RSpec.describe "trackings/index", type: :view do
  before(:each) do
    assign(:trackings, [
      Tracking.create!(
        :name => "Name",
        :value => 2,
        :units => "Units",
        :catogory => nil
      ),
      Tracking.create!(
        :name => "Name",
        :value => 2,
        :units => "Units",
        :catogory => nil
      )
    ])
  end

  it "renders a list of trackings" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Units".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
