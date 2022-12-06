class Bookmark < ApplicationRecord
  belongs_to :user
  belongs_to :post
  validates :post_id, uniqueness: { scope: :user_id, :message => "has already been bookmarked" }
  
end
