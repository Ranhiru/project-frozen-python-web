class Like < ActiveRecord::Base
  belongs_to :user
  belongs_to :compliment

  validates_presence_of :user, :compliment
end
