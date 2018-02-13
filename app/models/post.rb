class Post < ApplicationRecord
  validates :title, presence: true, length: { maximum: 50 }
  validates :body, presence: true, length: { maximum: 500 }
  validates :user_id, presence: true
  
  belongs_to :user
  has_many :comments, dependent: :destroy
end
