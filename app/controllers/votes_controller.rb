class VotesController < ApplicationController
  def new
    @post = Post.find(params[:post_id])
    @vote = Vote.new
  end

  def create
    @post = Post.find(params[:post_id])
    @vote = Vote.new(vote_params)
    @vote.post = @post
    @vote.save!
    redirect_to root_path
  end

  def index
    @votes = current_user.votes
  end

  private

  def votes_params
    params.require(:vote).permit(:user_id, :post_id)
  end
end
