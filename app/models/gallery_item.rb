class GalleryItem < ActiveRecord::Base
  mount_uploader :photo, PhotoUploader
end
