class GalleryItem < ActiveRecord::Base
  mount_uploader :image, PhotoUploader

  validates :title, :short_desc, presence: true, length: { maximum: 50 }
  validates :image, presence: true
end
