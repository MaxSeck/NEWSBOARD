class Vote < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates :user, uniqueness: { scope: :post,
    message: "You can't vote more than once" }
end
