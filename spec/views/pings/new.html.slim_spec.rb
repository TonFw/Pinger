require 'spec_helper'

describe "pings/new" do
  before(:each) do
    assign(:ping, stub_model(Ping,
      :http_code => "",
      :scheduled => nil,
      :target => nil
    ).as_new_record)
  end

  it "renders new ping form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", pings_path, "post" do
      assert_select "input#ping_http_code[name=?]", "ping[http_code]"
      assert_select "input#ping_scheduled[name=?]", "ping[scheduled]"
      assert_select "input#ping_target[name=?]", "ping[target]"
    end
  end
end
