class Category < ActiveRecord::Base
  has_many :posts
  mount_uploader :image, PhotoUploader

  validates_associated :posts
  validate :name, :description, presence: true
  validate :name, length: { maximum: 300 }
end
