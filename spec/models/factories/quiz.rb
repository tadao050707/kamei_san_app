FactoryBot.define do
  factory :quiz do
    id { '1'}
    title { '元気ですか？'}
    image { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/factories/images/pocchi.png'))}
    request_answer_on { '2022-12-23' }
    # user{ FactoryBot.create(:user)}
  end
end