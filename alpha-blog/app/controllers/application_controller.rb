class ApplicationController < ActionController::Base
    helper_method :current_user, :logged_in?
    
    def current_user
        @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end

    def logged_in?
        !!current_user # if we have a current user it will return true
    end

    def require_user
        if !logged_in?
            flash[:danger] = "You must be logged in to perform that action"
            redirect_to root_path
        end
    end
end
