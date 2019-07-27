class SessionsController < ApplicationController

  def new
    render :new
  end

  def create
    @user = User.find_by_credentials(
      params[:user][:email],
      params[:user][:password]
    )

    if @user
      login_user!(@user)
      flash[:notice] = "Welcome back"
      redirect_to bands_url
    else
      flash[:errors] = "You shall not pass with that wrong login info!"
      redirect_to new_session_url
  end

  def destroy
    logout_user!
    redirect_to new_session_url
  end

end