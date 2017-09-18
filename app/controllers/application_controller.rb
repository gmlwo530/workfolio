class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  def authenticate_user
      if session[:admin_id].nil?
          redirect_to '/session/login'
      end
  end
end
