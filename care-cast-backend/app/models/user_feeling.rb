class UserFeeling < ApplicationRecord
  belongs_to :user
  belongs_to :feeling
end
