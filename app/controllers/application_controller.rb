class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :set_locale
  
  protected
	# Set the locale from parameters
	def set_locale
		I18n.locale = params[:locale] unless params[:locale].blank?
	end
end
