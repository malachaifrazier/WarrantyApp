require "spec_helper"

describe DealerClaimsController do
  describe "routing" do

    it "routes to #index" do
      get("/dealer_claims").should route_to("dealer_claims#index")
    end

    it "routes to #new" do
      get("/dealer_claims/new").should route_to("dealer_claims#new")
    end

    it "routes to #show" do
      get("/dealer_claims/1").should route_to("dealer_claims#show", :id => "1")
    end

    it "routes to #edit" do
      get("/dealer_claims/1/edit").should route_to("dealer_claims#edit", :id => "1")
    end

    it "routes to #create" do
      post("/dealer_claims").should route_to("dealer_claims#create")
    end

    it "routes to #update" do
      put("/dealer_claims/1").should route_to("dealer_claims#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/dealer_claims/1").should route_to("dealer_claims#destroy", :id => "1")
    end

  end
end
