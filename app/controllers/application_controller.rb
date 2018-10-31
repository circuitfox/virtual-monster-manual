class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user, :logged_in?, :admin?, :search_config

  protected
    def search_config
      @search_config ||= {
        path: "/search",
        placeholder: "Search"
      }
    end

  private
    def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end

    def logged_in?
      @current_user != nil
    end

    def admin?
      @current_user && @current_user.admin?
    end
end
