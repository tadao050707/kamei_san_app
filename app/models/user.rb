class User < ApplicationRecord
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :assigns, dependent: :destroy
  has_many :groups, through: :assigns, source: :group
  has_many :quizzes, dependent: :destroy
  attr_accessor :group_id
  has_many :answers, dependent: :destroy
  has_many :favorites, dependent: :destroy
  def self.guest
    find_or_create_by!(email: 'guest@example.com') do |user|
      user.password = SecureRandom.urlsafe_base64
    end
  end 
end