class PostsController < ApplicationController
  def index
    if params[:query].present?
      sql_query = "description ILIKE :query OR content ILIKE :query OR address ILIKE :query"
      @posts = Post.where(sql_query, query: "%#{params[:query]}%")
    else
      @posts = Post.all
    end
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
    @post.save
    redirect_to posts_path(@post)
  end

  def destroy
    @post = Post.find(params[:id])
    return unless @post.user == current_user
    @post.destroy
    redirect_to posts_path status: :see_other

  end

  private

  def post_params
    params.require(:post).permit(:content, :address, :title)
  end
end
