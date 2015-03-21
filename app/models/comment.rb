class Comment < ActiveRecord::Base
  belongs_to :compliment
  belongs_to :user
end
