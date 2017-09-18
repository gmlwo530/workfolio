class SessionController < ApplicationController
  def login
  end

  def destroy
    session.delete(:admin_id)
    redirect_to :root
  end
  
  def create
    admin = Admin.first
    
    if admin.authenticate(params[:password])
      session[:admin_id] = admin.id
      
      redirect_to '/home/admin_index'
    else 
      flash.now[:alert] = "권한이 없습니다."
      
      render '/session/login'
    end
  end
  
end
