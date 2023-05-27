class CreateTweets < ActiveRecord::Migration[7.0]
  def change
    create_table :tweets do |t|
      t.integer :sender_id 

      t.references :user, :sender_id, foreign_key: { to_table: :users }

      t.string :body

      t.timestamps
    end
  end
end
