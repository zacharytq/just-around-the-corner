class Friend < ActiveRecord::Base
    belongs_to :user
    has_many :users_friends_gifts
    has_many :gifts, through: :users_friends_gifts
end