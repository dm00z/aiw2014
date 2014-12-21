class GalleryItemsController < ApplicationController
  def index
    @gallery_items = GalleryItem.order('id desc').page(params[:page]).per(3)
  end

  def show
    @gallery_item = GalleryItem.find(params[:id])
  end
end
