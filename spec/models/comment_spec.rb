require 'rails_helper'

RSpec.describe Comment, type: :model do
  before do
    @comment = FactoryBot.build(:comment)
  end

  describe  'コメント投稿' do
    context 'コメントを投稿できるとき' do
      it 'user_id(ユーザーが紐づいている)とcontentが存在すれば投稿できる' do
        expect(@comment).to be_valid
      end
    end
    context 'コメントを投稿できないとき' do
      it 'contentが存在しないと投稿できない' do
        @comment.content = ''
        @comment.valid?
        expect(@comment.errors.full_messages).to include('コメントを入力してください')
      end
      it 'user_id(ユーザーが紐づいている)が存在しないと投稿できない' do
        @comment.user_id = 1
        @comment.valid?
        expect(@comment.errors.full_messages).to include('従業員名を入力してください')
      end
    end
  end
end
