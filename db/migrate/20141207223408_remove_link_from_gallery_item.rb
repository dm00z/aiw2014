class RemoveLinkFromGalleryItem < ActiveRecord::Migration
  def change
    remove_column :gallery_items, :link, :string
  end
end
