class ApplicationController < ActionController::Base
	
	#before_action :authenticate_user!

	#after_action :authorize
 before_filter :configure_permitted_parameters, if: :devise_controller?
	before_action :set_i18n_locale_from_params
	
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
 protected


def authorize
   unless (user_signed_in? )
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


# CUSTOM EXCEPTION HANDLING
  rescue_from StandardError do |e|
    error(e)
  end

  def routing_error
    raise ActionController::RoutingError.new(params[:path])
  end

  protected

  def error(e)
    #render :template => "#{Rails::root}/public/404.html"
    if env["ORIGINAL_FULLPATH"] =~ /^\/api/
    error_info = {
      :error => "internal-server-error",
      :exception => "#{e.class.name} : #{e.message}",
    }
    error_info[:trace] = e.backtrace[0,10] if Rails.env.development?
    render :json => error_info.to_json, :status => 500
    else
      #render :text => "500 Internal Server Error", :status => 500 # You can render your own template here
      raise e
    end
  end




end
