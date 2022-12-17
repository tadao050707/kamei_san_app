FactoryBot.define do
  factory :quiz do
    title { '元気ですか？'}
    image { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/factories/images/pocchi1.png'))}
    request_answer_on { '2022-12-23' }
  end
end