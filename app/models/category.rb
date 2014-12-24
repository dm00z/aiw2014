class Category < ActiveRecord::Base
  has_many :posts
  mount_uploader :image, PhotoUploader

  validates_associated :posts
  validates :name, :description, presence: true
  validates :name, length: { maximum: 300 }
end
