class Post < ApplicationRecord
  belongs_to :user
  has_many :bookmarks
  has_many :votes
  has_many :comments
  has_one_attached :photo
end
