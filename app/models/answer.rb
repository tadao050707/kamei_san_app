class Answer < ApplicationRecord
  belongs_to :quiz
  belongs_to :user
  belongs_to :group
  has_many :favorites, dependent: :destroy
  has_many :favorite_users, through: :favorites, source: :user
end
