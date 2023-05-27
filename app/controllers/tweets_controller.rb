class TweetsController < ApplicationController
  include RackSessionFixController

  def index
    follower_ids = Follow.where(followee_id: params[:followee_id]).ids 
    tweets = Tweet.where(sender_id: follower_ids)
    render json: tweets.to_json, status: 200
  end

  def create 
    sender_id = params[:sender_id] 
    body = params[:body]
    tweet = Tweet.create!(sender_id: sender_id, body: body)
    Follow.where(follower_id: sender_id).each do |follow| 
      Rails.cache.write(follow.followee_id, tweet)
    end
    render json: tweet, status: 200 
  end
end
