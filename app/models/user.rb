class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nickname, presence: true
  validates :name, presence: true
  validates :post_code, presence: true
  validates :prefecture_id, presence: true
  validates :address, presence: true
  validates :telephone, presence: true

end
