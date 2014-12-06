class CreateGalleryItems < ActiveRecord::Migration
  def change
    create_table :gallery_items do |t|
      t.string :title
      t.string :link

      t.timestamps
    end
  end
end
