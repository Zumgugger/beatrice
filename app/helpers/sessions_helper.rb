module SessionsHelper
    
    def log_in(user)
        session[:user_id] = user.id
    end
    
    def current_user
        @current_user ||= User.find_by(id: session[:user_id])
    end
    
    def current_user?
        user == current_user
    end

    def logged_in?
        !current_user.nil?
    end
    
    def log_out
        session.delete(:user_id)
        @current_user = nil
    end
    
    def redirect_back_or(default)
      redirect_to(session[:forwarding_url] || default)
      session.delete(:forwarding_url)
    end

    def store_location
        session[:forwarding_url] = request.original_url if request.get?
    end

  def admin
      if !current_user
          redirect_to root_url 
          return
      end
      redirect_to root_url unless current_user && current_user.admin?
  end
    
  def admin?
     current_user && current_user.admin?
  end

end
