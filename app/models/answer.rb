class Answer < ApplicationRecord
  belongs_to :quiz
  belongs_to :user
  # enum answer: { "A": "A", "B": "B", "C": "C", "D": "D" }
end
