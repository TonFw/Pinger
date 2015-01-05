require 'spec_helper'

describe "Pings" do
  # Runs before each test.
  before do
    # Sign in as a user.
    sign_in_as_a_valid_user

    # Nested objs
    @schedule = FactoryGirl.build(:schedule)
    @target = FactoryGirl.build(:target)

    # setup the target
    @target.user = @user
    @target.save

    # setup the schedule
    @schedule.target = @target
    @schedule.save
  end

  describe "GET /targets/:target_id/schedules/:schedule_id/pings" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get target_schedule_pings_path(@target.id, @schedule.id)
      expect(response.status).to eq 200
    end
  end
end
