require 'rails_helper'

RSpec.describe "Sauces", type: :request do
  describe "GET /sauces" do
    it "works! (now write some real specs)" do
      get sauces_path
      expect(response).to have_http_status(200)
    end
  end
end
