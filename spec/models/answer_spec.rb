require 'rails_helper'
RSpec.describe Answer, type: :model do
  describe 'バリデーションのテスト' do
    context '解答が空の場合' do
      it 'バリデーションに引っかかる' do
        answer = Answer.new(id: '1', quiz_id: '1', group_id: '1', user_id: '1', select_answer: '')
        expect(answer).not_to be_valid
      end
    end
    context '全項目が入力されている場合' do
      it '登録が完了する' do
        answer = Answer.new(id: '1', quiz_id: '1', group_id: '1', user_id: '1', select_answer: "A", created_at:'2022/12/18', updated_at: '2022/12/18')  
        expect(answer).to be_valid
      end
    end
  end
end