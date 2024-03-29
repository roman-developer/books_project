class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :set_locale
 
	def set_locale
	  I18n.locale = params[:locale] || I18n.default_locale
	end

	# To not include an explicit option in every URL, we need this method default_url_options
	def default_url_options
	  { locale: I18n.locale }
	end
end
