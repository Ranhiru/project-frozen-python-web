class User < ActiveRecord::Base
  has_many :compliments
  has_many :labels
end
