require 'spec_helper'

describe "Schedules" do
  # Runs before each test.
  before do
    # Sign in as a user.
    sign_in_as_a_valid_user
  end

  describe "GET /targets/:target_id/schedules" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get target_schedules_path(1)
      response.status.should be(200)
    end
  end
end
