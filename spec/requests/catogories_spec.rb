require 'rails_helper'

RSpec.describe "Catogories", type: :request do
  describe "GET /catogories" do
    it "works! (now write some real specs)" do
      get catogories_path
      expect(response).to have_http_status(200)
    end
  end
end
