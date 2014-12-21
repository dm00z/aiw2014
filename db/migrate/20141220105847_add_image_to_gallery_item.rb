class AddImageToGalleryItem < ActiveRecord::Migration
  def change
    add_column :gallery_items, :image, :string
  end
end
