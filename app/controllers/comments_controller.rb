class CommentsController < ApplicationController
  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = Comment.new(comment_params)
    @comment.post = @post
    @comment.save!
    redirect_to root_path
  end

  def show
    @comment = Comment.new
  end

  def index
    @comments = current_user.comments
  end

  private

  def comment_params
    params.require(:comment).permit(:user_id, :content)
  end
end
