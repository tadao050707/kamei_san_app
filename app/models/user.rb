class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 30 }
  validates :age, presence: true
  validates :gender, presence: true
  validates :email, presence: true, uniqueness: true, length: { maximum: 255 },
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  before_validation { email.downcase! }
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :assigns, dependent: :destroy
  has_many :groups, through: :assigns, source: :group
  attr_accessor :group_id
  has_many :answers, dependent: :destroy
  has_many :favorites, dependent: :destroy
  def self.guest
    find_or_create_by!(email: 'guest@example.com') do |user|
      user.password = SecureRandom.urlsafe_base64
      user.name = "guest"
      user.gender = "フリー"
      user.age = "1982"
    end
  end 
  def self.admin_guest
    find_or_create_by!(email: 'admin_guest@example.com') do |user|
      user.password = SecureRandom.urlsafe_base64
      user.name = "admin_guest"
      user.gender = "フリー"
      user.age = "1992"
      user.admin = true
    end
  end 
end