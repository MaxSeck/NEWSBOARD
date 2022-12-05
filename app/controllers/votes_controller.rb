class VotesController < ApplicationController

  before_action :find_post

  # def create
  #   if already_voted?
  #     flash[:notice] = "You can't vote more than once"
  #   else
  #     Vote.create(post: @post, user: current_user)
  #   end
  #   redirect_to post_path(@post)
  # end

  # def already_voted?
  #   Vote.where(user_id: current_user.id, post_id:
  #   params[:post_id]).exists?
  # end

  # private

#   def find_post
#     @post = Post.find(params[:post_id])
#   end
end
