class FriendGifts < ActiveRecord::Base
    belongs_to :friend
    belongs_to :gift
end