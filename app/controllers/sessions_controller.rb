class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:name]) || User.find_by(name: params[:name])
    if user
      if user.password_reset?
        redirect_to password_reset_url(user), notice: "Password reset required"
      elsif user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect_to root_url, notice: "Logged in"
      end
    else
      flash.now.alert = "Credentials are invalid"
    end
  end

  def destroy
    session.delete(:user_id)
    @current_user = nil
    redirect_to root_url, notice: "Logged out"
  end
end
