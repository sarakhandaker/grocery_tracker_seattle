class ApplicationController < ActionController::Base
helper_method :logged_in?
helper_method :current_user
    def current_user
        if session[:user_id]
        @user=User.find(session[:user_id])
        end
    end
  
    def logged_in?
        !!session[:user_id]
    end

    def redirect_user
        if !session[:user_id]
        redirect_to login_path
        end
    end
    def home
            render :layout => false
    end
    def interesting_facts
    end
end
