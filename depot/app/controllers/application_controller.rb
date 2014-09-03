class ApplicationController < ActionController::Base
	
	#before_action :authenticate_user!

	#after_action :authorize
 before_filter :configure_permitted_parameters, if: :devise_controller?
	before_action :set_i18n_locale_from_params
	
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
 protected


def authorize
   unless (user_signed_in? && current_user.role == 'admin')
   	redirect_to '/'
    end  
  end

#end
#end
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

	def set_i18n_locale_from_params
		if params[:locale]
			if I18n.available_locales.map(&:to_s).include?(params[:locale])
				I18n.locale = params[:locale]
			else
				flash.now[:notice] ="#{params[:locale]} translation not available"
				logger.error flash.now[:notice]
			end
		end
	end
	def default_url_options
		{ locale: I18n.locale }
	end

def configure_permitted_parameters
  devise_parameter_sanitizer.for(:sign_up){|u|u.permit(:name, :email, :password, :password_confirmation, :role)}
  devise_parameter_sanitizer.for(:account_update) << :name
end

end
