class PhotosController < ApplicationController
  before_filter :current_user

  def index
    @photos = current_user.photos.all
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
    
  end

  def destroy
  end


end