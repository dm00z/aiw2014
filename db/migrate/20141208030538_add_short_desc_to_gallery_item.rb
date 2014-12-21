class AddShortDescToGalleryItem < ActiveRecord::Migration
  def change
    add_column :gallery_items, :short_desc, :string
  end
end
