require 'spec_helper'

describe "scheduleds/new" do
  before(:each) do
    assign(:scheduled, stub_model(Scheduled,
      :hour => "",
      :target => nil
    ).as_new_record)
  end

  it "renders new scheduled form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", scheduleds_path, "post" do
      assert_select "input#scheduled_hour[name=?]", "scheduled[hour]"
      assert_select "input#scheduled_target[name=?]", "scheduled[target]"
    end
  end
end
