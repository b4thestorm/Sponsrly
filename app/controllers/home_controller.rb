class HomeController < ApplicationController
before_action :resource, only: [:index] 
  def index
 
  end

private 

  def resource
    @resource ||= User.new
  end

  #def resource_name
  #  :user
  #end
 
  #def devise_mapping
  #  @devise_mapping ||= Devise.mappings[:user]
  #end

end
