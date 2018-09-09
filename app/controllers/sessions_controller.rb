class SessionsController < ApplicationController
  @user = User.new
  @users = User.all

  def new
  end

  def create
    @user = User.find_by(email: params[:session][:email].downcase)
    if @user && @user.authenticate(params[:session][:password])
      login_url(@user)
      redirect_to @user
    else
      p = "Invalid Credentials"
      render 'new'
    end
  end
end
