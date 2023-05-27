class TweetsController < ApplicationController
  include RackSessionFixController

  def index
    follower_ids = Follow.where(followee_id: params[:followee_id]).ids 
    tweets = Tweet.where(sender_id: follower_ids)
    render json: tweets.to_json, status: 200
  end
end
