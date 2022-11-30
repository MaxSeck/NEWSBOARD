class Post < ApplicationRecord
  belongs_to :user
  has_many :bookmarks
  has_many :votes
  has_many :comments
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_one_attached :photo
end
