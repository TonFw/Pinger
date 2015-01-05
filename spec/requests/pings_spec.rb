require 'spec_helper'

describe "Pings" do
  # Runs before each test.
  before do
    # Sign in as a user.
    sign_in_as_a_valid_user
    @target_id = 1
    @schedule_id = 1
  end

  describe "GET /targets/:target_id/schedules/:schedule_id/pings" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get target_schedule_pings_path(@target_id, @schedule_id)
      expect(response.status).to eq 200
    end
  end
end
