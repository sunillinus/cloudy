require 'rails_helper'

RSpec.describe "AppDictionaryEntries", :type => :request do
  describe "GET /app_dictionary_entries" do
    it "works! (now write some real specs)" do
      get app_dictionary_entries_path
      expect(response.status).to be(200)
    end
  end
end
