class FollowsController < ApplicationRecord
  def create 
    Follow.create(follower_id: params[:follower_id], followee_id: params[:follower_id])
  end
end
