require 'rails_helper'

RSpec.describe "catogories/show", type: :view do
  before(:each) do
    @catogory = assign(:catogory, Catogory.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
