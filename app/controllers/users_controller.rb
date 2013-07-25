class UsersController < ApplicationController
  skip_before_filter :require_login, only: [:new, :create]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.save!
    redirect_to root_url, :notice => "Signed up!"
  rescue
    render :new
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end