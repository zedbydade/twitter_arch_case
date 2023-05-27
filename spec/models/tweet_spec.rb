require 'rails_helper'

RSpec.describe Tweet, type: :model do
  describe 'associations' do
    it { should belong_to(:user)}
  end

  describe 'validations' do 
    it { should validate_presence_of(:body) }
    it { should validate_presence_of(:sender_id) }
  end
end
