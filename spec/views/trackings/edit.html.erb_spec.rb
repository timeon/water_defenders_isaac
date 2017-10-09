require 'rails_helper'

RSpec.describe "trackings/edit", type: :view do
  before(:each) do
    @tracking = assign(:tracking, Tracking.create!(
      :name => "MyString",
      :value => 1,
      :units => "MyString",
      :catogory => nil
    ))
  end

  it "renders the edit tracking form" do
    render

    assert_select "form[action=?][method=?]", tracking_path(@tracking), "post" do

      assert_select "input#tracking_name[name=?]", "tracking[name]"

      assert_select "input#tracking_value[name=?]", "tracking[value]"

      assert_select "input#tracking_units[name=?]", "tracking[units]"

      assert_select "input#tracking_catogory_id[name=?]", "tracking[catogory_id]"
    end
  end
end
