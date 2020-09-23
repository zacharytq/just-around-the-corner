class UsersFriendsGifts < ActiveRecord::Base
    belongs_to :user
    belongs_to :friend
    belongs_to :gift
end