require 'spec_helper'

describe "schedules/new" do
  before(:each) do
    assign(:schedule, stub_model(Schedule,
      :hour => "",
      :target => nil
    ).as_new_record)
  end

  it "renders new schedule form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", schedules_path, "post" do
      assert_select "input#schedule_hour[name=?]", "schedule[hour]"
      assert_select "input#schedule_target[name=?]", "schedule[target]"
    end
  end
end
