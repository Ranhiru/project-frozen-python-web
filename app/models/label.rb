class Label < ActiveRecord::Base
  belongs_to :user
  has_many :compliment_labels
  has_many :compliments, through: :compliment_labels

  validates :label_title, :user, presence: true
  validates_length_of :label_title, minimum: 2
end
