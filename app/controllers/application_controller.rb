class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper
  
  before_filter :set_locale
  
  protected
	# Set the locale from parameters
	def set_locale
		puts "set locale's param locale: <#{params[:locale]}>, locale is:<#{I18n.locale}>"
		I18n.locale = params[:locale] unless params[:locale].blank?
		session[:locale] = params[:locale] unless params[:locale].blank?
		I18n.locale = session[:locale]
		puts "after set locale's locale: <#{params[:locale]}>, locale is:<#{I18n.locale}>"
	end
end
