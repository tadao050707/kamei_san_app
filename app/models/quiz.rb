class Quiz < ApplicationRecord
  validates :title, :image, :request_answer_on, presence: true
  mount_uploader :image, ImageUploader
  has_one :answer
end
