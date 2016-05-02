class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

 
  def collect_date(params)
    Date.civil(params[:"date(1i)"].to_i) 
  end
 
 
  def collect_time(params)
    Time.parse("#{params[:'time(1i)']}-#{params[:'time(2i)']}-#{params[:'time(3i)']} #{params[:'time(4i)']}:#{params[:'time(5i)']}")
  end 

 
end
