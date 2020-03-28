class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    before_action :configure_permitted_parameters, if: :devise_controller?
   
    rescue_from CanCan::AccessDenied do |exception|
     redirect_back fallback_location: root_path, :alert => exception.message
   end
    protected

         def configure_permitted_parameters
              devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :username, :email, :password)}

              devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :username, :email, :password, :current_password)}
         end

end
