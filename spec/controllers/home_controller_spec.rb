require 'spec_helper'

describe HomeController do

  describe "GET 'index'" do
    it "returns http redirect" do
      # Redirect because the user is not logged in
      get 'index'
      response.status.should == 302
    end
  end

end
