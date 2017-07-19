class ApplicationController < ActionController::Base
  # Protects from Cross-Site Request Forgery
  protect_from_forgery with: :exception

  # White-list approach to authentication
  before_action :authenticate_user!

  # Add permitted fields to User sign in
  before_action :configure_permitted_parameters, if: :devise_controller?

  # Method that configures the parameters permitted by Devise
  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])

    # For additional fields in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name])
  end

end
