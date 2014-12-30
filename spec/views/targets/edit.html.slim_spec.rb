require 'spec_helper'

describe "targets/edit" do
  before(:each) do
    @target = assign(:target, stub_model(Target,
      :url => "MyString",
      :user => nil
    ))
  end

  it "renders the edit target form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", target_path(@target), "post" do
      assert_select "input#target_url[name=?]", "target[url]"
      assert_select "input#target_user[name=?]", "target[user]"
    end
  end
end
