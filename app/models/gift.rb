class Gift < ActiveRecord::Base
    has_many :users_friends_gifts
    has_many :users, through: :users_friends_gifts
    has_many :friends, through: :users_friends_gifts
end