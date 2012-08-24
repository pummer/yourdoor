require "spec_helper"

describe IAppsController do
  describe "routing" do

    it "routes to #index" do
      get("/i_apps").should route_to("i_apps#index")
    end

    it "routes to #new" do
      get("/i_apps/new").should route_to("i_apps#new")
    end

    it "routes to #show" do
      get("/i_apps/1").should route_to("i_apps#show", :id => "1")
    end

    it "routes to #edit" do
      get("/i_apps/1/edit").should route_to("i_apps#edit", :id => "1")
    end

    it "routes to #create" do
      post("/i_apps").should route_to("i_apps#create")
    end

    it "routes to #update" do
      put("/i_apps/1").should route_to("i_apps#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/i_apps/1").should route_to("i_apps#destroy", :id => "1")
    end

  end
end
