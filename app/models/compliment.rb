class Compliment < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_many :likes
  has_many :compliment_labels
  has_many :labels, through: :compliment_labels

  validates :compliment_text, :user, presence: true
  validates_length_of :compliment_text, minimum: 3
end
