class BookmarksController < ApplicationController
  def show
    @bookmark = Bookmark.new
  end

  def index
    @bookmarks = current_user.bookmarks
  end
end
