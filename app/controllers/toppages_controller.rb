class ToppagesController < ApplicationController
  def index
    if logged_in?
      @micropost = current_user.microposts.build
      @microposts = current_user.feed_microposts.order('created_at DESC').page(params[:page])
      @likes = Like.where(micropost_id: params[:micropost_id])
    end
  end
end