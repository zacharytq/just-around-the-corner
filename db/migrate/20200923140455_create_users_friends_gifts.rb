class CreateUsersFriendsGifts < ActiveRecord::Migration[6.0]
  def change
    create_table :users_friends_gifts do |t|
      t.integer :user_id
      t.integer :friend_id
      t.integer :gift_id
    end
  end
end
