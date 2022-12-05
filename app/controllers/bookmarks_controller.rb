class BookmarksController < ApplicationController

  def index
    @bookmarks = current_user.bookmarks #array of bookmark objects
    @posts = @bookmarks.map {|bookmark| bookmark.post}
  end
end
