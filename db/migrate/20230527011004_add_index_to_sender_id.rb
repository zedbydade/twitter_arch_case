class AddIndexToSenderId < ActiveRecord::Migration[7.0]
  def change
    add_index :tweets, :sender_id
  end
end
