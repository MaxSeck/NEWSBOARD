class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :comments
  has_many :posts
  has_many :bookmarks
  has_many :votes

  after_create :set_username

  private
    def set_username
       self.username = "user-#{SecureRandom.hex(2)}"
       self.save!
    end
end
