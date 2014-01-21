class SearchesController < ApplicationController
  include Instagrammable 

  before_filter :current_user

  def index
    @user = current_user
  end

  def new
    @search = Search.new
    render :new
  end

  def create
    @search = current_user.searches.create(params[:search])
    if @search.valid?
     redirect_to feeds_path
    else
      render :new
    end
  end

  def show
    @search = Search.find_by_id(params[:id])
    @feeds = current_user.feeds.all
    @photos = perform_search(@search)
    render :show
  end

  def edit 
  end

  def update
  end

  def destroy
  end


end
