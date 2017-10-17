class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  
  protected
  
  

  
  ##  def configure_permitted_parameters_for_owners
  #     added_attrs = [:full_name]
  #     devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
  #     devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  ##  end
  
  
end
