class SessionsController < ApplicationController
layout "homepage"

  def create
    user = current_user ||= User.find_by_email(params[:user][:email])
    if user && user.authenticate(params[:user][:password])
      session[:user_id] = user.id
      redirect_to feeds_path
    else
      @error = "Invalid Login"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end

end
