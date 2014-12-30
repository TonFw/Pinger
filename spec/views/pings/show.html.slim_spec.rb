require 'spec_helper'

describe "pings/show" do
  before(:each) do
    @ping = assign(:ping, stub_model(Ping,
      :http_code => "",
      :scheduled => nil,
      :target => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
  end
end
