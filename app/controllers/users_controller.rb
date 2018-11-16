class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy, :password_reset, :reset]
  before_action :logged_in_user, only: [:edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :update, :destroy]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_url, notice: "Thank you for signing up"
    else
      render :new
    end
  end

  def index
    @users = User.all
  end

  def show
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to @user, notice: "User updated"
    else
      render :edit
    end
  end

  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to root_url, notice: "Account destroyed." }
    end
  end

  def password_reset
    if @user.password_reset?
      render :password_reset
    else
      logger.debug "User exists but password_reset = false"
      render file: "public/404.html", status: :not_found
    end
  end

  def reset
    if @user.password_reset?
      if @user.update(reset_params)
        session[:user_id] = @user.id
        redirect_to root_url, notice: "Password reset"
      else
        render :password_reset
      end
    else
      logger.debug "User exists but password_reset = false"
      render file: "public/404.html", status: :not_found
    end
  end

  private
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require("user").permit(:name, :email, :password, :password_confirmation, :password_reset)
    end

    def reset_params
      params.require("user").permit(:password, :password_confirmation, :password_reset)
    end

    def logged_in_user
      unless logged_in?
        flash[:notice] = "Please log in"
      end
    end

    def correct_user
      redirect_to root_url unless @user == current_user
    end
end
