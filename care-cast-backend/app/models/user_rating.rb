class UserRating < ApplicationRecord
  belongs_to :category
  belongs_to :user
  belongs_to :feeling
end
