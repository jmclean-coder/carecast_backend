class Feeling < ApplicationRecord
has_many :user_feelings
    #class helper methods to filter by a feeling's needs condition
    #make more helpers as needed
    def self.satisfied
        self.where(needs_condition: "satisfied")
    end
  
    def self.unsatisfied
        self.where(needs_condition: "unsatisfied")
    end
  end
  