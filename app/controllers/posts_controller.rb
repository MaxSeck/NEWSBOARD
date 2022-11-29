class PostsController < ApplicationController
    def index
      @posts = Post.all
      @markers = @posts.geocoded.map do |post|
        {
          lat: post.latitude,
          lng: post.longitude,
          info_window: render_to_string(partial: "info_window", locals: {post: post})
        }
      end
end
