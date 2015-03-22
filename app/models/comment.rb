class Comment < ActiveRecord::Base
  belongs_to :compliment
  belongs_to :user

  validates :comment_text, :user, :compliment, presence: true
  validates_length_of :comment_text, minimum: 2
end
