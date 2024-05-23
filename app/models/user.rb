class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture

  validates :nickname, presence: true
  validates :name, presence: true
  validates :post_code, presence: true
  validates :prefecture_id, presence: true, numericality: { other_than: 1 , message: "can't be blank"}
  validates :address, presence: true
  validates :telephone, presence: true

end
