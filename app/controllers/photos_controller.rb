class PhotosController < ApplicationController
  before_filter :current_user

  def index
    @photos = current_user.photos.all
  end

  def show
     @photo = Photo.find_by_id(params[:id])
     @feeds = current_user.feeds.load
  end

  def edit 
    @photo = Photo.find_by_id(params[:id])
    @feeds = current_user.feeds.load
  end

  def update
   @photo = Photo.find(params[:id])
    if @photo.update_attributes(params[:photo])
      redirect_to @photo
    else
      render :edit
    end
  end

  def destroy
  end


end