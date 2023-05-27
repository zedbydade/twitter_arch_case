require 'rails_helper'

RSpec.describe 'Tweets', type: :request do
  describe 'GET /index' do
    context 'authenticated user' do 
      let!(:user) { create :user }
      let!(:second_user) { create :user }
      scenario 'when resource exists' do 
        create :follow, follower_id: second_user.id, followee_id: user.id
        create :tweet, sender_id: second_user.id

        get '/tweets', params: { followee_id: user.id } 
        expect(response.status).to eq(200)
      end
    end
  end
end
