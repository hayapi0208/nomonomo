class Post < ApplicationRecord

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture
  belongs_to :user
  has_many :comments
  has_one_attached :image

  validates :title, presence: true
  validates :text, presence: true
  validates :prefecture_id, presence: true, numericality: { other_than: 1 , message: "can't be blank"}

  def self.search(search)
    if search.present?
      prefecture_id = Prefecture.find_by(name: search)&.id
      if prefecture_id.present?
        Post.where(prefecture_id: prefecture_id).order('created_at DESC')
      else
        Post.where('title LIKE ? OR text LIKE ?', "%#{search}%", "%#{search}%").order('created_at DESC')
      end
    else
      Post.order('created_at DESC')
    end
  end

end
