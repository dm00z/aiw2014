class Post < ActiveRecord::Base
  belongs_to :category
  mount_uploader :image, PhotoUploader
  mount_uploader :thumb, PhotoUploader

  validates :title, presence: true, length: { maximum: 300 }
  validates :body, presence: true
  validates :written_by, :subtitle, presence: true, length: { maximum: 50 }
  validates :image, :thumb, presence: true

  def self.search(query)
    refined_query = '%'+query+'%'
    where('title like ?', "%#{refined_query}")
  end
end
