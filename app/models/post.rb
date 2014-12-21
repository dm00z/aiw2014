class Post < ActiveRecord::Base
  belongs_to :category
  mount_uploader :image, PhotoUploader
  mount_uploader :thumb, PhotoUploader

  validate :title, presence: true, length: { maximum: 300 }
  validate :body, presence: true
  validate :written_by, :subtitle, presence: true, length: { maximum: 50 }
  validate :image, :thumb, presence: true
end
