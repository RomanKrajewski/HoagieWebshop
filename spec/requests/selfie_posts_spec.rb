require 'rails_helper'

RSpec.describe "SelfiePosts", type: :request do
  describe "GET /selfie_posts" do
    it "works! (now write some real specs)" do
      get selfie_posts_path
      expect(response).to have_http_status(200)
    end
  end
end
