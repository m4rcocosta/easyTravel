require "rails_helper"

RSpec.describe PersonalStatisticsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/personal_statistics").to route_to("personal_statistics#index")
    end

    it "routes to #new" do
      expect(:get => "/personal_statistics/new").to route_to("personal_statistics#new")
    end

    it "routes to #show" do
      expect(:get => "/personal_statistics/1").to route_to("personal_statistics#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/personal_statistics/1/edit").to route_to("personal_statistics#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/personal_statistics").to route_to("personal_statistics#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/personal_statistics/1").to route_to("personal_statistics#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/personal_statistics/1").to route_to("personal_statistics#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/personal_statistics/1").to route_to("personal_statistics#destroy", :id => "1")
    end
  end
end
