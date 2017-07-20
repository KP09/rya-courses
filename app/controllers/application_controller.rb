class ApplicationController < ActionController::Base
  # Protects from Cross-Site Request Forgery
  protect_from_forgery with: :exception

  # White-list approach to authentication
  before_action :authenticate_user!
  before_action :authenticate_school_admin!

end
