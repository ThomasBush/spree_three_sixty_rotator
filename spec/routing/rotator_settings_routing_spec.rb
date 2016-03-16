require "rails_helper"

RSpec.describe RotatorSettingsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/rotator_settings").to route_to("rotator_settings#index")
    end

    it "routes to #new" do
      expect(:get => "/rotator_settings/new").to route_to("rotator_settings#new")
    end

    it "routes to #show" do
      expect(:get => "/rotator_settings/1").to route_to("rotator_settings#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/rotator_settings/1/edit").to route_to("rotator_settings#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/rotator_settings").to route_to("rotator_settings#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/rotator_settings/1").to route_to("rotator_settings#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/rotator_settings/1").to route_to("rotator_settings#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/rotator_settings/1").to route_to("rotator_settings#destroy", :id => "1")
    end

  end
end
