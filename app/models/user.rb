class User < ActiveRecord::Base
  has_many :compliments
  has_many :labels
  has_many :comments
  has_many :likes
end
