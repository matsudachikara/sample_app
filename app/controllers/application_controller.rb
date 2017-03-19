class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception, prepend: true
  
  #before_actionを設定
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    #strong parametersを設定し、nameを許可
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :password, :password_confirmation])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:name, :password])
  end 
  
end