class Tweet < ApplicationRecord
  belongs_to :user, foreign_key: 'sender_id'

  validates :sender_id, :body, presence: true
end
