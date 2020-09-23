class User < ActiveRecord::Base
    has_secure_password
    has_many :friends
    has_many :users_friends_gifts
    has_many :gifts, through: :users_friends_gifts
end