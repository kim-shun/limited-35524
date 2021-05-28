require 'rails_helper'

RSpec.describe Question, type: :model do
  describe '#create' do
    before do
      @question = FactoryBot.build(:question)
    end

    context '内容に問題ない場合' do
      it 'パーソナリティー情報が全て埋まっていれば登録できること' do
        expect(@question).to be_valid
      end

      it 'textがなくても登録できること' do
        @question.text = ''
        expect(@question).to be_valid
      end
    end

    context '内容に問題がある場合' do
      it 'philosophy_idが1では登録できないこと' do
        @question.philosophy_id = 1
        @question.valid?
        expect(@question.errors.full_messages).to include("理念を選択してください。")
      end

      it 'color_idが1では登録できないこと' do
        @question.color_id = 1
        @question.valid?
        expect(@question.errors.full_messages).to include("好きな色を選択してください。")
      end

      it 'my_type_idが1では登録できないこと' do
        @question.my_type_id = 1
        @question.valid?
        expect(@question.errors.full_messages).to include("自分の特性を選択してください。")
      end

      it 'like_type_idが1では登録できないこと' do
        @question.like_type_id = 1
        @question.valid?
        expect(@question.errors.full_messages).to include("好きなタイプを選択してください。")
      end

      it 'prefecture_idが1では登録できないこと' do
        @question.prefecture_id = 1
        @question.valid?
        expect(@question.errors.full_messages).to include("出身を選択してください。")
      end

      it 'food_idが1では登録できないこと' do
        @question.food_id = 1
        @question.valid?
        expect(@question.errors.full_messages).to include("食べ物を選択してください。")
      end

      it 'hobby_idが1では登録できないこと' do
        @question.hobby_id = 1
        @question.valid?
        expect(@question.errors.full_messages).to include("趣味を選択してください。")
      end

      it 'music_idが1では登録できないこと' do
        @question.music_id = 1
        @question.valid?
        expect(@question.errors.full_messages).to include("好きな音楽を選択してください。")
      end

      it 'angry_idが1では登録できないこと' do
        @question.angry_id = 1
        @question.valid?
        expect(@question.errors.full_messages).to include("どんな時に怒るかを選択してください。")
      end

      it 'improve_idが1では登録できないこと' do
        @question.improve_id = 1
        @question.valid?
        expect(@question.errors.full_messages).to include("改善したいことを選択してください。")
      end
    end
  end
end
