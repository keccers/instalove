class FeedsController < ApplicationController
  before_filter :current_user

  def index
    @feeds = current_user.feeds
    puts @feeds
    @searches = current_user.searches
  end

  def create
    @feed = current_user.feeds.create(params[:feed])
    if @feed.valid?
     redirect_to feeds_path
    else
      render :new
    end
  end

  def new
    @feed = Feed.new
    render :new
  end

  def show
    @feed = Feed.find_by_id(params[:id])
    @photos = @feed.photos
  end

  def edit 
  end


  def update
  end

  def destroy
  end


end
