require "spec_helper"

describe SchedulesController do
  describe "routing" do
    before(:all) do
      @nested_id = '1'
      @nested = "targets/#{@nested_id}"
    end

    it "routes to #index" do
      get("#{@nested}/schedules").should route_to(action:'index', controller:'schedules', target_id: @nested_id)
    end

    it "routes to #new" do
      get("#{@nested}/schedules/new").should route_to("schedules#new", target_id: @nested_id)
    end

    it "routes to #show" do
      get("#{@nested}/schedules/1").should route_to("schedules#show", target_id: @nested_id, :id => "1")
    end

    it "routes to #edit" do
      get("#{@nested}/schedules/1/edit").should route_to("schedules#edit", target_id: @nested_id, :id => "1")
    end

    it "routes to #create" do
      post("#{@nested}/schedules").should route_to("schedules#create", target_id: @nested_id)
    end

    it "routes to #update" do
      put("#{@nested}/schedules/1").should route_to("schedules#update", target_id: @nested_id, :id => "1")
    end

    it "routes to #destroy" do
      delete("#{@nested}/schedules/1").should route_to("schedules#destroy", target_id: @nested_id, :id => "1")
    end

  end
end
