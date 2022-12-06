class Quiz < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_one :answer
end
