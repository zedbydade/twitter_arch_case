require 'rails_helper'

RSpec.describe Follow, type: :model do
  describe 'validations' do 
    it { should validate_presence_of(:follower_id) }
    it { should validate_presence_of(:followee_id) }
  end
end
