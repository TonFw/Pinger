require 'spec_helper'

describe "targets/new" do
  before(:each) do
    assign(:target, stub_model(Target,
      :url => "MyString",
      :user => nil
    ).as_new_record)
  end

  it "renders new target form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", targets_path, "post" do
      assert_select "input#target_url[name=?]", "target[url]"
      assert_select "input#target_user[name=?]", "target[user]"
    end
  end
end
