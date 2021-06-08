require 'rails_helper'

RSpec.describe Comment, type: :model do
  before do
    user = FactoryBot.create(:user)
    ogiri = FactoryBot.create(:ogiri)
    @comment = FactoryBot.build(:comment, user_id: user.id, ogiri_id: ogiri.id)
  end

  it 'テキストが埋まっていれば回答できること' do
    expect(@comment).to be_valid
  end

  it 'テキストが空では回答できないこと' do
    @comment.text = ""
    @comment.valid?
    expect(@comment.errors.full_messages).to include("テキストを入力してください")
  end

  it 'userが紐付いていないと保存できないこと' do
    @comment.user_id = nil
    @comment.valid?
    expect(@comment.errors.full_messages).to include("ニックネームを入力してください")
  end

  it 'ogiriが紐付いていないと保存できないこと' do
    @comment.ogiri_id = nil
    @comment.valid?
    expect(@comment.errors.full_messages).to include("お題を入力してください")
  end
end
