class Friend < ActiveRecord::Base
    belongs_to :user
    has_many :gifts
end