class User < ActiveRecord::Base
  has_many :compliments
  has_many :labels
  has_many :comments
  has_many :likes

  validates :username, :email_address, :profile_pic_url, presence: true
end
