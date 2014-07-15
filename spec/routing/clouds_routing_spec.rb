require "rails_helper"

RSpec.describe CloudsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/clouds").to route_to("clouds#index")
    end

    it "routes to #new" do
      expect(:get => "/clouds/new").to route_to("clouds#new")
    end

    it "routes to #show" do
      expect(:get => "/clouds/1").to route_to("clouds#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/clouds/1/edit").to route_to("clouds#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/clouds").to route_to("clouds#create")
    end

    it "routes to #update" do
      expect(:put => "/clouds/1").to route_to("clouds#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/clouds/1").to route_to("clouds#destroy", :id => "1")
    end

  end
end
