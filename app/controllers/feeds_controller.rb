class FeedsController < ApplicationController

  def index
    @feeds = current_user.feeds.all
  end

  def create

  end

  def new

  end

  def show

  end

  def edit
    
  end


  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      redirect_to @user
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to root_url
  end


  private

    def correct_user
      redirect_to root_url unless current_user && params[:id] == current_user.id
    end

end
