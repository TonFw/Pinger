module ControllerMacros
  def login_user
    before(:each) do
      @request.env['devise.mapping'] = Devise.mappings[:user]
      user = FactoryGirl.create(:user)
      # user.confirm! # only necessary if using confirmable module
      sign_in user
    end
  end
end