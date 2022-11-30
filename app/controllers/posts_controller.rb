class PostsController < ApplicationController

  def index
    @users = User.all

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
    @post.save!
    redirect_to root_path
  end

  private

  def post_params
    params.require(:post).permit(:content, :address, :title, :photo)
  end
end
