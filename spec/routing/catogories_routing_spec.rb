require "rails_helper"

RSpec.describe CatogoriesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/catogories").to route_to("catogories#index")
    end

    it "routes to #new" do
      expect(:get => "/catogories/new").to route_to("catogories#new")
    end

    it "routes to #show" do
      expect(:get => "/catogories/1").to route_to("catogories#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/catogories/1/edit").to route_to("catogories#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/catogories").to route_to("catogories#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/catogories/1").to route_to("catogories#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/catogories/1").to route_to("catogories#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/catogories/1").to route_to("catogories#destroy", :id => "1")
    end

  end
end
