class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  skip_before_action :verify_authenticity_token
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_filter :authenticate_user!

  def after_sign_out_path_for(resource)
    landing_path
  end

  def after_sign_in_path_for(resource)
    root_path
  end

  def after_sign_up_path_for(resource)
    root_path
  end


  protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) << :user_name
    end
end



