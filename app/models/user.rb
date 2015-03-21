class User < ActiveRecord::Base
  has_many :compliments
  has_many :labels
  has_many :comments
end
