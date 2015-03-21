class Label < ActiveRecord::Base
  belongs_to :user
  has_many :compliment_labels
  has_many :compliments, through: :compliment_labels
end
