class SessionsController < ApplicationController
  skip_before_action :authenticate

  def new
  end

  def create
    user = User.find_by(email: params[:name]) || User.find_by(name: params[:name])
    logger.debug user.inspect
    if user
      logger.debug "user exists"
      if user.password_reset?
        logger.debug "needs password"
        redirect_to password_reset_url(user), notice: "Password reset required"
      elsif user.authenticate(params[:password])
        logger.debug "authed"
        session[:user_id] = user.id
        redirect_to root_url, notice: "Logged in"
      else
        redirect_to new_session_url, alert: "Password is incorrect"
      end
    else
      redirect_to new_session_url, alert: "Credentials are invalid"
    end
  end

  def destroy
    session.delete(:user_id)
    @current_user = nil
    redirect_to root_url, notice: "Logged out"
  end
end
