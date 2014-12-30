require 'spec_helper'

describe "scheduleds/index" do
  before(:each) do
    assign(:scheduleds, [
      stub_model(Scheduled,
        :hour => "",
        :target => nil
      ),
      stub_model(Scheduled,
        :hour => "",
        :target => nil
      )
    ])
  end

  it "renders a list of scheduleds" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
