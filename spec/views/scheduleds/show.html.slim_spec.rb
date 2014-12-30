require 'spec_helper'

describe "scheduleds/show" do
  before(:each) do
    @scheduled = assign(:scheduled, stub_model(Scheduled,
      :hour => "",
      :target => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
  end
end
