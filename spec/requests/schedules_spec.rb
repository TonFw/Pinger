require 'spec_helper'

describe "Schedules" do
  # Runs before each test.
  before do
    # Sign in as a user.
    sign_in_as_a_valid_user
    @schedule = FactoryGirl.create(:user_target_schedule)
    @target = @schedule.target
  end

  describe "GET /targets/:target_id/schedules" do
    it "schedules index" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get target_schedules_path(@target.id)
      response.status.should be(200)
    end

    it "schedule show" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get target_schedule_path(@target.id, @schedule.id)
      response.status.should be(200)
    end
  end
end
