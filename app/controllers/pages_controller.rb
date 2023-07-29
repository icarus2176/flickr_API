class PagesController < ApplicationController
  def index
    flickr = Flickr.new

    if params[:user_id]
      @photos = flickr.photos.search(user_id: params[:user_id])
    else
      @photos = flickr.photos.getRecent
    end
  end
end
