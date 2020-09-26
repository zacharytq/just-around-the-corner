class Gift < ActiveRecord::Base
    validates_presence_of :name, :url, :price, :friend
    belongs_to :friend
end