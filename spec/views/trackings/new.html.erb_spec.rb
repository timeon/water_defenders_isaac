require 'rails_helper'

RSpec.describe "trackings/new", type: :view do
  before(:each) do
    assign(:tracking, Tracking.new(
      :name => "MyString",
      :value => 1,
      :units => "MyString",
      :catogory => nil
    ))
  end

  it "renders new tracking form" do
    render

    assert_select "form[action=?][method=?]", trackings_path, "post" do

      assert_select "input#tracking_name[name=?]", "tracking[name]"

      assert_select "input#tracking_value[name=?]", "tracking[value]"

      assert_select "input#tracking_units[name=?]", "tracking[units]"

      assert_select "input#tracking_catogory_id[name=?]", "tracking[catogory_id]"
    end
  end
end
