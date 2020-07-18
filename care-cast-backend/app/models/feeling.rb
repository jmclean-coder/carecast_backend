class Feeling < ApplicationRecord
  belongs_to :user 


  #class helper methods to filter by a feeling's needs condition
  #make more helpers as needed
  def self.satisfied
      self.where(needs_condition: "satisfied")
  end

  def self.unsatisfied
      self.where(needs_condition: "unsatisfied")
  end
end
