class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :manuals
  has_many :contents
  has_one_attached :image

  validates :shopname, :greeting, presence: true
  # 後から imageカラム追加
end
