require "spec_helper"

describe RAppsController do
  describe "routing" do

    it "routes to #index" do
      get("/r_apps").should route_to("r_apps#index")
    end

    it "routes to #new" do
      get("/r_apps/new").should route_to("r_apps#new")
    end

    it "routes to #show" do
      get("/r_apps/1").should route_to("r_apps#show", :id => "1")
    end

    it "routes to #edit" do
      get("/r_apps/1/edit").should route_to("r_apps#edit", :id => "1")
    end

    it "routes to #create" do
      post("/r_apps").should route_to("r_apps#create")
    end

    it "routes to #update" do
      put("/r_apps/1").should route_to("r_apps#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/r_apps/1").should route_to("r_apps#destroy", :id => "1")
    end

  end
end
