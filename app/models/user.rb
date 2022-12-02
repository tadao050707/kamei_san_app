class User < ApplicationRecord
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :assigns, dependent: :destroy
  has_many :groups, through: :assigns, source: :group
  has_many :quizzes, dependent: :destroy
  attr_accessor :group_id
  has_many :answers, dependent: :destroy
end
