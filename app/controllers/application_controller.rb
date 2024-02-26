class ApplicationController < ActionController::Base
    before_action :authorize
    protected
    def authorize
        unless User.find_by(id: session[:user_id])
            redirect_to login_url, notice: "Please log in"
        end
    end
    helper_method :current_user, :logged_in?
    def current_user
        @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
    end

    def logged_in?
        !!current_user
    end

    def log_in(user)
        session[:user_id] = user.id
    end
end
