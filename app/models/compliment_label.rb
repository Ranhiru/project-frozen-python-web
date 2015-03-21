class ComplimentLabel < ActiveRecord::Base
  belongs_to :compliment
  belongs_to :label
  belongs_to :user
end
