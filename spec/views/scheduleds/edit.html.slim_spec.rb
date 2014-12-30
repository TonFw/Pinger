require 'spec_helper'

describe "scheduleds/edit" do
  before(:each) do
    @scheduled = assign(:scheduled, stub_model(Scheduled,
      :hour => "",
      :target => nil
    ))
  end

  it "renders the edit scheduled form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", scheduled_path(@scheduled), "post" do
      assert_select "input#scheduled_hour[name=?]", "scheduled[hour]"
      assert_select "input#scheduled_target[name=?]", "scheduled[target]"
    end
  end
end
