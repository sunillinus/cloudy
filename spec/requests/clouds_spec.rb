require 'rails_helper'

RSpec.describe "Clouds", :type => :request do
  describe "GET /clouds" do
    it "works! (now write some real specs)" do
      get clouds_path
      expect(response.status).to be(200)
    end
  end
end
