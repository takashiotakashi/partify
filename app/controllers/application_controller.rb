class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :dispatch_user

  def dispatch_user
    return unless current_user && request.get?

    path = new_profile_path unless current_user.valid?

    redirect_to path unless path.nil? || path == request.path
  end
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end
end
