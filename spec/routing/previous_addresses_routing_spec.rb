require "spec_helper"

describe PreviousAddressesController do
  describe "routing" do

    it "routes to #index" do
      get("/previous_addresses").should route_to("previous_addresses#index")
    end

    it "routes to #new" do
      get("/previous_addresses/new").should route_to("previous_addresses#new")
    end

    it "routes to #show" do
      get("/previous_addresses/1").should route_to("previous_addresses#show", :id => "1")
    end

    it "routes to #edit" do
      get("/previous_addresses/1/edit").should route_to("previous_addresses#edit", :id => "1")
    end

    it "routes to #create" do
      post("/previous_addresses").should route_to("previous_addresses#create")
    end

    it "routes to #update" do
      put("/previous_addresses/1").should route_to("previous_addresses#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/previous_addresses/1").should route_to("previous_addresses#destroy", :id => "1")
    end

  end
end
