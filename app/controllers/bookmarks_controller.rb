class BookmarksController < ApplicationController
  def index
    @bookmarks = current_user.bookmarks # array of bookmark objects
    @posts = @bookmarks.map { |bookmark| bookmark.post }
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to bookmarks_path, notice: "Deleted succefully", status: :see_other
  end
end
