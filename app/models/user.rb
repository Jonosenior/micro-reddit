class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 15 }
  validates :password, presence: true

  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
end
