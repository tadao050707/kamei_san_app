class Answer < ApplicationRecord
  belongs_to :quiz
  belongs_to :user
  belongs_to :group
end
