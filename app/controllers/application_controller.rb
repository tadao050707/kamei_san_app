class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :gender, :age, :group_id]) 
    # devise_parameter_sanitizer.permit(:invite, keys: [:email, :name, :gender, :age, :group_id])
    # devise_parameter_sanitizer.permit(:accept_invitation, keys: [:password, :password_confirmation, :invitation_token, :name, :gender, :age, :group_id])
  end
end
