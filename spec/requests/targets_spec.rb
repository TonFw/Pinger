require 'spec_helper'

describe "Targets" do
  # Runs before each test.
  before do
    # Sign in as a user.
    sign_in_as_a_valid_user
    @target = FactoryGirl.build(:target)
    @target.user = @user
    @target.save
  end

  describe "GET /targets" do
    it "target index" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get targets_path
      response.status.should be(200)
    end
  end

  describe "GET /targets/:target_id" do
    it "target show" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get target_path(@target)
      response.status.should be(200)
    end
  end
end
