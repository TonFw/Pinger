require "spec_helper"

describe PingsController do
  describe "routing" do
    before(:all) do
      @t_id = '1'
      @s_id = '1'
      @nested = "targets/#{@t_id}/schedules/#{@s_id}"
    end

    it "routes to #index" do
      get("#{@nested}/pings").should route_to("pings#index", target_id:@t_id, schedule_id:@s_id)
    end

    it "routes to #new" do
      get("#{@nested}/pings/new").should route_to("pings#new", target_id:@t_id, schedule_id:@s_id)
    end

    it "routes to #show" do
      get("#{@nested}/pings/1").should route_to("pings#show", target_id:@t_id, schedule_id:@s_id, :id => "1")
    end

    it "routes to #edit" do
      get("#{@nested}/pings/1/edit").should route_to("pings#edit", target_id:@t_id, schedule_id:@s_id, :id => "1")
    end

    it "routes to #create" do
      post("#{@nested}/pings").should route_to("pings#create", target_id:@t_id, schedule_id:@s_id)
    end

    it "routes to #update" do
      put("#{@nested}/pings/1").should route_to("pings#update", target_id:@t_id, schedule_id:@s_id, :id => "1")
    end

    it "routes to #destroy" do
      delete("#{@nested}/pings/1").should route_to("pings#destroy", target_id:@t_id, schedule_id:@s_id, :id => "1")
    end

  end
end
