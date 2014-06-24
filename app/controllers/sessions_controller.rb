class SessionsController < ApplicationController

  def new
    redirect_to home_path if logged_in?
  end

  def create
    user = User.where(email: params[:email]).first
      if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect_to home_path
        flash[:success] = "you are now signed in, enjoy!"
      else
        flash[:danger] = "Invalid email or password! "
        redirect_to sign_in_path
      end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
    flash[:success]= "you are now signed out"
  end

end