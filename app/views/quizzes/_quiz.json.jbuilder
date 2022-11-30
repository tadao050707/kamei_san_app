json.extract! quiz, :id, :title, :image, :group_id, :user, :created_at, :updated_at
json.url quiz_url(quiz, format: :json)
