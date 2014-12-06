class GalleryItemsController < ApplicationController
  def index
    @gallery_items = GalleryItem.all
  end

  def new
    @gallery_item = GalleryItem.new
  end

  def create
    @gallery_item = GalleryItem.new

    if @gallery_item.save
      redirect_to gallery_items_path, notice: "Gallery item is created."
    else
      render new
    end
  end

  def destroy
    @gallery_item =  GalleryItem.find(params[:id])

    @gallery_item.destroy
    redirect_to gallery_items_path, notice: "Gallery item is deleted."
  end
end
