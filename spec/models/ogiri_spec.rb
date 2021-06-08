require 'rails_helper'

RSpec.describe Ogiri, type: :model do
  describe '#create' do
    before do
      @ogiri = FactoryBot.build(:ogiri)
    end

    context '内容に問題ない場合' do
      it 'テキストが全て埋まっていれば登録できること' do
        expect(@ogiri).to be_valid
      end
    end

    context '内容に問題がある場合' do
      it 'first_text_idが1では登録できないこと' do
        @ogiri.first_text_id = 1
        @ogiri.valid?
        expect(@ogiri.errors.full_messages).to include("文頭のテキストを選択してください。")
      end

      it 'second_text_idが1では登録できないこと' do
        @ogiri.second_text_id = 1
        @ogiri.valid?
        expect(@ogiri.errors.full_messages).to include("末尾のテキストを選択してください。")
      end

      it '自由回答欄が空では登録できないこと' do
        @ogiri.text = ""
        @ogiri.valid?
        expect(@ogiri.errors.full_messages).to include("自由回答欄を入力してください")
      end
    end
  end
end
