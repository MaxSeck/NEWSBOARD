class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :comments
  has_many :posts
  has_many :bookmarks

  after_create :set_username

  private
    def set_username
       self.update(username: "user-#{SecureRandom.hex(2)}" )
       self.save!
    end
  has_many :votes, dependent: :destroy
end
