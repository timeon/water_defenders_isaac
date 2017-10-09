require 'rails_helper'

RSpec.describe "catogories/index", type: :view do
  before(:each) do
    assign(:catogories, [
      Catogory.create!(
        :name => "Name"
      ),
      Catogory.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of catogories" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
