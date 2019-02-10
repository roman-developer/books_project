I18n.load_path += Dir[Rails.root.join('lib', 'locale', '*.{rb,yml}')]
 
# Whitelist locales available for the application
I18n.available_locales = [:en, :es]