class Group < ApplicationRecord
  has_many :assigns, dependent: :destroy
  has_many :users, through: :assigns, source: :user
  has_many :quizzes
  has_many :groups
  attr_accessor :group_id
end
