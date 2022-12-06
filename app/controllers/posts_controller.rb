class PostsController < ApplicationController

  def index

    @users = User.all
    if params[:query].present?
      sql_query = "description ILIKE :query OR content ILIKE :query OR address ILIKE :query"
      @posts = Post.where(sql_query, query: "%#{params[:query]}%")
    else
      @posts = Post.all.order('posts.created_at DESC')
    end
  end

  def new
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
    @post.save
    redirect_to post_path(@post)
  end

  def destroy
    @post = Post.find(params[:id])
    return unless @post.user == current_user
    @post.destroy
    redirect_to posts_path status: :see_other
  end

  def vote
    @post = Post.all.find(params[:id])
    Vote.create(user_id: current_user.id, post_id: @post.id)
    redirect_to post_path(@post)
  end

  def bookmark
    @post = Post.all.find(params[:id])
    Bookmark.create(user_id: current_user.id, post_id: @post.id)
    redirect_to post_path(@post)
  end

  def bookmarked?(user)
    !!Bookmark.where(post_id: id, user_id: user.id).first
   end
  private

  def post_params
    params.require(:post).permit(:content, :address, :title, :photo)
  end
end
