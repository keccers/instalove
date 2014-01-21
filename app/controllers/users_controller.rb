class UsersController < ApplicationController
  before_filter :correct_user, only: [:edit, :destroy]

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      redirect_to @user
    else
      render :edit
    end
  end

  private

  def correct_user
    redirect_to root_url unless current_user && params[:id] == current_user.id
  end

end
