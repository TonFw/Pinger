require 'spec_helper'

describe "pings/edit" do
  before(:each) do
    @ping = assign(:ping, stub_model(Ping,
      :http_code => "",
      :scheduled => nil,
      :target => nil
    ))
  end

  it "renders the edit ping form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", ping_path(@ping), "post" do
      assert_select "input#ping_http_code[name=?]", "ping[http_code]"
      assert_select "input#ping_scheduled[name=?]", "ping[scheduled]"
      assert_select "input#ping_target[name=?]", "ping[target]"
    end
  end
end
