class GalleryItem < ActiveRecord::Base
  mount_uploader :image, PhotoUploader

  validate :title, :short_desc, presence: true, length: { maximum: 50 }
  validate :image, presence: true
end
