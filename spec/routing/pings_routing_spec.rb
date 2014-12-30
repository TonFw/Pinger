require "spec_helper"

describe PingsController do
  describe "routing" do

    it "routes to #index" do
      get("/pings").should route_to("pings#index")
    end

    it "routes to #new" do
      get("/pings/new").should route_to("pings#new")
    end

    it "routes to #show" do
      get("/pings/1").should route_to("pings#show", :id => "1")
    end

    it "routes to #edit" do
      get("/pings/1/edit").should route_to("pings#edit", :id => "1")
    end

    it "routes to #create" do
      post("/pings").should route_to("pings#create")
    end

    it "routes to #update" do
      put("/pings/1").should route_to("pings#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/pings/1").should route_to("pings#destroy", :id => "1")
    end

  end
end
