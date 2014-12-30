require 'spec_helper'

describe "pings/index" do
  before(:each) do
    assign(:pings, [
      stub_model(Ping,
        :http_code => "",
        :scheduled => nil,
        :target => nil
      ),
      stub_model(Ping,
        :http_code => "",
        :scheduled => nil,
        :target => nil
      )
    ])
  end

  it "renders a list of pings" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
