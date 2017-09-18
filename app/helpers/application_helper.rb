module ApplicationHelper
    def authenticate_user!
        session[:id]
    end
end
