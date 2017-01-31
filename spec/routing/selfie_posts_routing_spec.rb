require "rails_helper"

RSpec.describe SelfiePostsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/selfie_posts").to route_to("selfie_posts#index")
    end

    it "routes to #new" do
      expect(:get => "/selfie_posts/new").to route_to("selfie_posts#new")
    end

    it "routes to #show" do
      expect(:get => "/selfie_posts/1").to route_to("selfie_posts#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/selfie_posts/1/edit").to route_to("selfie_posts#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/selfie_posts").to route_to("selfie_posts#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/selfie_posts/1").to route_to("selfie_posts#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/selfie_posts/1").to route_to("selfie_posts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/selfie_posts/1").to route_to("selfie_posts#destroy", :id => "1")
    end

  end
end
