class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

	protected

	def configure_permitted_parameters
	    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit({ roles: [] }, :email, :password, :password_confirmation, 
	      :firm_name, :attorney_name, :phone_number, :fax_number, :address) }

	    devise_parameter_sanitizer.for(:account_update) { |u| u.permit({ roles: [] },:email, :password, :password_confirmation, :current_password, :firm_name, :attorney_name, :phone_number, :fax_number, :address) }
	end
end


