require "spec_helper"

describe OoglersController do
  describe "routing" do

    it "routes to #index" do
      get("/ooglers").should route_to("ooglers#index")
    end

    it "routes to #new" do
      get("/ooglers/new").should route_to("ooglers#new")
    end

    it "routes to #show" do
      get("/ooglers/1").should route_to("ooglers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/ooglers/1/edit").should route_to("ooglers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/ooglers").should route_to("ooglers#create")
    end

    it "routes to #update" do
      put("/ooglers/1").should route_to("ooglers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/ooglers/1").should route_to("ooglers#destroy", :id => "1")
    end

  end
end
