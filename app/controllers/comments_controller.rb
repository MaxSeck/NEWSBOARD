class CommentsController < ApplicationController

  def create
    @post = Post.find(params[:post_id])
    @comment = Comment.new(comment_params)
    # @comment = Post.find(params[:post_id]).comments.new(comment_params)
    @comment.user = current_user
    @comment.post = @post
    @comment.save!
    redirect_to request.referrer
  end

  private

  def comment_params
    params.require(:comment).permit(:user_id, :content)
  end
end
