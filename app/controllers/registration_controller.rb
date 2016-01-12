# noinspection RubyInstanceMethodNamingConvention
class RegistrationController < Devise::RegistrationsController
  before_filter :configure_permitted_parameters, :only => [:create]

  protected

  # The path used after sign up. You need to overwrite this method
  # in your own RegistrationsController.
  def after_sign_up_path_for(resource)
    root_path
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:first_name, :last_name, :email, :password, :password_confirmation) }
  end
end
