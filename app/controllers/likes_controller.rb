class LikesController < ApplicationController
  def create

    @micropost = Micropost.find(params[:micropost_id])

    @like = Like.create(user_id: current_user.id, micropost_id: params[:micropost_id])

    # @likes = Like.where(micropost_id: params[:micropost_id])
    # @microposts = Micropost.all
  end

  def destroy

    @micropost = Micropost.find(params[:micropost_id])

    like = Like.find_by(user_id: current_user.id, micropost_id: params[:micropost_id])
    like.destroy

    # @likes = Like.where(micropost_id: params[:micropost_id])
    # @microposts = Micropost.all
  end
end