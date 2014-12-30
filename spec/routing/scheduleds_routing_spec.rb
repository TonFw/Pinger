require "spec_helper"

describe ScheduledsController do
  describe "routing" do

    it "routes to #index" do
      get("/scheduleds").should route_to("scheduleds#index")
    end

    it "routes to #new" do
      get("/scheduleds/new").should route_to("scheduleds#new")
    end

    it "routes to #show" do
      get("/scheduleds/1").should route_to("scheduleds#show", :id => "1")
    end

    it "routes to #edit" do
      get("/scheduleds/1/edit").should route_to("scheduleds#edit", :id => "1")
    end

    it "routes to #create" do
      post("/scheduleds").should route_to("scheduleds#create")
    end

    it "routes to #update" do
      put("/scheduleds/1").should route_to("scheduleds#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/scheduleds/1").should route_to("scheduleds#destroy", :id => "1")
    end

  end
end
