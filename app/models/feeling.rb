class Feeling < ApplicationRecord
  has_many :user_feelings

  #Scopes
  #ActiveRecord helper methods to filter by a feeling's needs condition
  scope :satisfied, -> { where(need_condition: "satisfied") }
  scope :unsatisfied, -> { where(need_condition: "unsatisfied") }

end
  