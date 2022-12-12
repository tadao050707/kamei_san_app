class Group < ApplicationRecord
  validates :name, presence: true
  has_many :assigns, dependent: :destroy
  has_many :users, through: :assigns, source: :user
  has_many :quizzes, dependent: :destroy
  has_many :groups, dependent: :destroy
  attr_accessor :group_id
end
