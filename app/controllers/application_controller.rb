class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_or_token # SetUp user devise if

  protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:locale, :name, :username, :email, :password, :password_confirmation, :role, :remember_me) }
      devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:login, :username, :email, :password, :remember_me) }
      devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:username, :email, :password, :password_confirmation, :current_password, :role) }
      I18n.locale = @current_user.locale || I18n.default_locale unless @current_user.nil?
    end

    # Validate user session if is not API call
    def authenticate_or_token
      @@host = request.host_with_port
      return if params[:action].index('login') || params[:controller] == 'accesses'
      authenticate_user! if params[:controller].index('api').nil?
      @current_user = current_user if @current_user.nil?
    end
end
