class BookmarksController < ApplicationController

  def index
    @bookmarks = current_user.bookmarks # array of bookmark objects
    @posts = @bookmarks.map { |bookmark| bookmark.post }
  end

  def bookmarked_by?(user)
    return true if bookmarks.any? {|b| b.user == user }
  end

  def destroy
    post = Post.find(params[:post_id])
    bookmark = current_user.bookmarks.find(params[:id])
  end
end
