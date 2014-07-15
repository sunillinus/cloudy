require "rails_helper"

RSpec.describe AppDictionaryEntriesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/app_dictionary_entries").to route_to("app_dictionary_entries#index")
    end

    it "routes to #new" do
      expect(:get => "/app_dictionary_entries/new").to route_to("app_dictionary_entries#new")
    end

    it "routes to #show" do
      expect(:get => "/app_dictionary_entries/1").to route_to("app_dictionary_entries#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/app_dictionary_entries/1/edit").to route_to("app_dictionary_entries#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/app_dictionary_entries").to route_to("app_dictionary_entries#create")
    end

    it "routes to #update" do
      expect(:put => "/app_dictionary_entries/1").to route_to("app_dictionary_entries#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/app_dictionary_entries/1").to route_to("app_dictionary_entries#destroy", :id => "1")
    end

  end
end
