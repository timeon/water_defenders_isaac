require 'rails_helper'

RSpec.describe "catogories/new", type: :view do
  before(:each) do
    assign(:catogory, Catogory.new(
      :name => "MyString"
    ))
  end

  it "renders new catogory form" do
    render

    assert_select "form[action=?][method=?]", catogories_path, "post" do

      assert_select "input#catogory_name[name=?]", "catogory[name]"
    end
  end
end
