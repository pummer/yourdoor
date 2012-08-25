require "spec_helper"

describe PersonalReferencesController do
  describe "routing" do

    it "routes to #index" do
      get("/personal_references").should route_to("personal_references#index")
    end

    it "routes to #new" do
      get("/personal_references/new").should route_to("personal_references#new")
    end

    it "routes to #show" do
      get("/personal_references/1").should route_to("personal_references#show", :id => "1")
    end

    it "routes to #edit" do
      get("/personal_references/1/edit").should route_to("personal_references#edit", :id => "1")
    end

    it "routes to #create" do
      post("/personal_references").should route_to("personal_references#create")
    end

    it "routes to #update" do
      put("/personal_references/1").should route_to("personal_references#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/personal_references/1").should route_to("personal_references#destroy", :id => "1")
    end

  end
end
