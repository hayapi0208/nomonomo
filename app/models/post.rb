class Post < ApplicationRecord

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture
  belongs_to :user
  has_one_attached :image

  validates :title, presence: true
  validates :text, presence: true
  validates :prefecture_id, presence: true

end
