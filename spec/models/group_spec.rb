require 'rails_helper'
RSpec.describe Group, type: :model do
  describe 'バリデーションのテスト' do
    context '名前の入力欄が空の場合' do
      it 'バリデーションに引っかかる' do
        group = Group.new(name: '')
        expect(group).not_to be_valid
      end
    end
    
    context '全項目が入力されている場合' do
      it '登録が完了する' do
        group = Group.new(name: 'group_name')
        expect(group).to be_valid
      end
    end
  end
end