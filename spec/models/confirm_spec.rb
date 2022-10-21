require 'rails_helper'

RSpec.describe Confirm, type: :model do
  before do
    @confirm = FactoryBot.build(:confirm)
  end

  describe  'シフト作成登録' do
    context 'シフト作成を登録できるとき' do
      it 'use_id,work_status_id、start_time、end_timeが存在すれば登録できる' do
        expect(@confirm).to be_valid
      end
      it 'contentが空でも登録できる' do
        @confirm.content = ''
        expect(@confirm).to be_valid
      end
    end
    context 'シフト作成の登録ができないとき' do
      it 'user_idが空では登録できない' do
        @confirm.user_id = 1
        @confirm.valid?
        expect(@confirm.errors.full_messages).to include('従業員名を入力してください')
      end
      it 'work_status_idが空では登録できない' do
        @confirm.work_status_id = 1
        @confirm.valid?
        expect(@confirm.errors.full_messages).to include('勤務状態を入力してください')
      end
      it 'work_status_idが空では登録できない' do
        @confirm.work_status_id = 1
        @confirm.valid?
        expect(@confirm.errors.full_messages).to include('勤務状態を入力してください')
      end
      it 'start_timeが現在の日時より遅い時間では登録できない' do
        @confirm.start_time = '202001010100'
        @confirm.valid?
        expect(@confirm.errors.full_messages).to include('出勤時間は現在の日時より遅い時間を選択してください')
      end
      it 'end_timeがstart_timeより早い時間では登録できない' do
        @confirm.end_time = '208012301530'
        @confirm.valid?
        expect(@confirm.errors.full_messages).to include('退勤時間は出勤時間より遅い時間を選択してください')
      end
    end
  end
end
