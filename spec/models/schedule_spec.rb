require 'spec_helper'

describe Schedule do
  context 'Unique schedule per Target' do
    # SetUp the Objs
    before do
      # base vars
      @user = FactoryGirl.create(:user)
      @target = FactoryGirl.build(:target)
      @schedule = FactoryGirl.build(:schedule)
      @schedule2 = FactoryGirl.build(:schedule)

      # Associate & save it
      @target.user = @user
      @target.save
      @schedule.target = @target
      @schedule.save
    end

    it 'should not be saved' do
      @schedule2.target = @target
      expect(@schedule2.save).to_not be_true
      expect(@schedule2.errors.messages).to_not be_empty
    end
  end
end
