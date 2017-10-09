require 'rails_helper'

RSpec.describe "catogories/edit", type: :view do
  before(:each) do
    @catogory = assign(:catogory, Catogory.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit catogory form" do
    render

    assert_select "form[action=?][method=?]", catogory_path(@catogory), "post" do

      assert_select "input#catogory_name[name=?]", "catogory[name]"
    end
  end
end
