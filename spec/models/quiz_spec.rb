require 'rails_helper'

RSpec.describe Quiz, type: :model do
  describe 'バリデーションのテスト' do
    context '画像の入力欄が空の場合' do
      it 'バリデーションに引っかかる' do
        quiz = Quiz.new(id: '1', title: '元気ですか？', image: '',request_answer_on: '2022/12/23')
        expect(quiz).not_to be_valid
      end
    end
    
    context '全項目が入力されている場合' do
      it '登録が完了する' do
        quiz = FactoryBot.create(:quiz)
        expect(quiz).to be_valid
      end
    end
  end
end